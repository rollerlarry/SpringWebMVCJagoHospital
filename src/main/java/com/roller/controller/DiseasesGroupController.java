package com.roller.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.roller.entity.Diseases;
import com.roller.services.DiseasesServices;

@Controller
@RequestMapping("ListDiseasesGroup")
public class DiseasesGroupController {
	@Autowired
	DiseasesServices diseasesServices;
	
	@GetMapping("/{idDiseasesGroup}")
	@Transactional
	public String Default(@PathVariable int idDiseasesGroup, ModelMap modelMap) {
		List<Diseases> listDiseasesGroup = diseasesServices.getListDiseasesForDiseasesGroup(idDiseasesGroup);
		modelMap.addAttribute("listDiseasesGroup", listDiseasesGroup);
		return "DiseasesGroup";
	}
}
