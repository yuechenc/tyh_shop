package edu.etime.tyh.manager.controller;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import edu.etime.tyh.manager.interfaces.SortService;
import edu.etime.tyh.pojo.Sort;


@Controller
@RequestMapping("/sort")
public class SortController {
	
	@Autowired 
	SortService sortService;
	
	@GetMapping("/getSortList")
	private String getSortList(ModelMap model,Sort sort){
		List<Sort> sortList=sortService.getSortList(sort);
		model.addAttribute("sortList", sortList);
		return "admin/SortList";
	}
	
	@GetMapping("/toadd")
	private String toaddSort(ModelMap model){
		model.addAttribute("edittype", "addSort");
		return "admin/EditSort";
	}
	
	@GetMapping("/toedit")
	private String toeditSort(ModelMap model,Sort sort){
		Sort sort2=sortService.getSort(sort);
		model.addAttribute("edittype", "editSort");
		model.addAttribute("sort", sort2);
		return "admin/EditSort";
	}
	
	@PostMapping("/addSort")
	private String addSort(ModelMap model,Sort sort){
		sort.setSorid(UUID.randomUUID().toString());
		Integer rtn=sortService.insertSort(sort);
		
		if(rtn>0){
			return "redirect:/sort/getSortList";
		}else{
			model.addAttribute("msg", "添加类型失败！");
			return "redirect:/sort/toadd";
		}
	}
	
	@PostMapping("/editSort")
	private String editSort(ModelMap model, Sort sort){
		Integer rtn=sortService.updateSort(sort);
		if(rtn>0){
			return "redirect:/sort/getSortList";
		}else {
			model.addAttribute("msg", "修改类型失败！");
			return "redirect:/sort/toedit?sorid="+sort.getSorid();
		}
	}

}
