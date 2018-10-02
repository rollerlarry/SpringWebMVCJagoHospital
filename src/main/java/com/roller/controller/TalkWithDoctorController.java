package com.roller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("TalkWithDoctor")
public class TalkWithDoctorController {
	@GetMapping
	public String Default() {
		return "TalkWithDoctor";
	}
}
