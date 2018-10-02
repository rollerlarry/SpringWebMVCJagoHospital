package com.roller.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.roller.services.AccountServices;

@Controller
@RequestMapping("api/")
@SessionAttributes("userName")
public class APIController {
	@Autowired
	AccountServices accountServices;
	
	
	@GetMapping("checkLoginAPI")
	@ResponseBody
	public String checkLoginAPI(@RequestParam String userName, @RequestParam String passWord, ModelMap modelMap) {
		boolean checkLogin = accountServices.checkLogin(userName,passWord);
		modelMap.addAttribute("userName", userName);
		return ""+checkLogin;
	}
}
