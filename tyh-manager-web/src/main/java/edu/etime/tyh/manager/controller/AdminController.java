package edu.etime.tyh.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Admin")
public class AdminController {
	
	@PostMapping("login")
	private String login(){
		return "admin/dashboard";
	}
}
