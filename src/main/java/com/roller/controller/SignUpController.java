package com.roller.controller;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.roller.entity.Account;
import com.roller.services.AccountServices;

@Controller
@RequestMapping("SignUp")
public class SignUpController {
	
	@Autowired
	AccountServices accountServices;
	
	@GetMapping
	public String Default() {
		return "../account/SignUp";
	}
	@PostMapping
	@Transactional
	public String SignUp(@RequestParam String userName, @RequestParam String passWord, @RequestParam String rePassWord,ModelMap modelMap) {
		if(passWord.equals(rePassWord)) {
			accountServices.addNewAccount(userName, rePassWord);
			modelMap.addAttribute("success", "Đăng ký tài khoản thành công.");
		}else {
			modelMap.addAttribute("samePass", "Mật khẩu không giống nhau.");
		}
		
		return "../account/SignUp";
	}

}
