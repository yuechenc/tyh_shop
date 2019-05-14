package edu.etime.tyh.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.etime.fastdfs.client.FastDFSClient;

@Controller
@RequestMapping("upload")
public class UploadController {

	@RequestMapping("goUpload")
	private String goUpload() {
		return "admin/upload";
	}

	@RequestMapping("test")
	public String upload(Model model, @RequestParam("file") MultipartFile file) throws Exception {
		FastDFSClient dfs = new FastDFSClient();
		String filename = file.getOriginalFilename();
		String extName = filename.substring(filename.lastIndexOf(".") + 1);
		String url = dfs.uploadFile(file.getBytes(), extName);
		System.out.println(url);
		model.addAttribute("url", url);
		return "admin/upload";
	}
}
