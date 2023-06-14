package com.gvc.core.vendormonitoringframework.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class VendorsListController {

	@GetMapping("/")
	public String myPage(Model model) {
		return "indext";
	}

	@GetMapping("/tt")
	public String myPage1(Model model) {
		return "index1";
	}

	@GetMapping("/t")
	public String myPage2(Model model) {
		return "index123";
	}

	@GetMapping("/view")
	public String myPage3(Model model) {
		return "view";
	}
}
