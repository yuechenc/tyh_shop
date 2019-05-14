package edu.etime.tyh.manager.controller;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.etime.fastdfs.client.FastDFSClient;
import edu.etime.tyh.manager.interfaces.ProductService;
import edu.etime.tyh.manager.interfaces.SortService;
import edu.etime.tyh.pojo.Product;
import edu.etime.tyh.pojo.Sort;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	private SortService sortService;
	@Autowired
	private ProductService productService;

	@GetMapping("/getProductList")
	private String getProductList(ModelMap model, Product product) {
		List<Product> pList = productService.getProductList(product);
		model.addAttribute("product", pList);
		model.addAttribute("msg", "测试导航");
		return "/admin/ProductList";
	}

	@GetMapping("/toadd")
	private String toadd(ModelMap model) {
		Sort sort = new Sort();
		sort.setSorstate(1);
		List<Sort> sortList = sortService.getSortList(sort);
		model.addAttribute("sortList", sortList);
		model.addAttribute("edittype", "addProduct");
		return "/admin/EditProduct";
	}

	@GetMapping("/toedit")
	private String toedit(ModelMap model, Product product) {
		Product product2 = productService.getProductById(product);
		Sort sort = new Sort();
		sort.setSorstate(1);
		List<Sort> sorts = sortService.getSortList(sort);
		model.addAttribute("product", product2);
		model.addAttribute("sortList", sorts);
		model.addAttribute("edittype", "editProduct");
		return "/admin/EditProduct";
	}

	@PostMapping("/addProduct")
	private String addProduct(ModelMap model, Product product, @RequestParam("file") MultipartFile file)
			throws Exception {
		FastDFSClient dfs = new FastDFSClient();
		String filename = file.getOriginalFilename();
		String extName = filename.substring(filename.lastIndexOf(".") + 1);
		String url = dfs.uploadFile(file.getBytes(), extName);
		System.out.println(url);

		product.setProid(UUID.randomUUID().toString());
		product.setImage(url);
		int rtn = productService.insertProduct(product);
		if (rtn > 0) {
			return "redirect:/product/getProductList";
		} else {
			model.addAttribute("msg", "添加商品失败！");
			return "redirect:/product/toadd";
		}
	}

	@PostMapping("/editProduct")
	private String editProduct(ModelMap model, Product product, @RequestParam("file") MultipartFile file)
			throws Exception {
		String filename = file.getOriginalFilename();
		if (!filename.equals("")) {
			FastDFSClient dfs = new FastDFSClient();
			String extName = filename.substring(filename.lastIndexOf(".") + 1);
			String url = dfs.uploadFile(file.getBytes(), extName);
			System.out.println("filename:" + filename);
			System.out.println(url);
			product.setImage(url);
		}

		int rtn = productService.updateProduct(product);
		if (rtn > 0) {
			return "redirect:/product/getProductList";
		} else {
			model.addAttribute("msg", "修改商品失败！");
			return "redirect:/product/toedit?proid=" + product.getProid();
		}
	}

}
