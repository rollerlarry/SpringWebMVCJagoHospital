package com.roller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("DashBoard")
public class DashboardController {
	@GetMapping
	@Transactional
	public String Default() {
		
		return "../admin/DashBoard";
	}
}
