package com.roller.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.roller.entity.Diseases;
import com.roller.entity.Symptom;
import com.roller.services.DiseasesServices;
import com.roller.services.SymptomServices;

@Controller
@RequestMapping("Diagnostic")
public class DiagnosticController {
	@Autowired 
	SymptomServices symptomServices;
	@Autowired
	DiseasesServices diseasesServices;
	
	@GetMapping
	@Transactional
	public String Default(ModelMap modelMap) {

		List<Symptom> listSymptom = symptomServices.getListSymptom();
		modelMap.addAttribute("listSymptom", listSymptom);
		
		
		
		return "Diagnostic";
	}
	@PostMapping("Result")
	@Transactional
	public String Diagnostic(@RequestParam("checkboxname") List<String> listSymptomUserChecked, ModelMap modelMap) {
		List<Diseases> listDiseasesOfDiagnostic = diseasesServices.getListDiseasesForDuagnostic(listSymptomUserChecked);
		modelMap.addAttribute("listDiseasesResult", listDiseasesOfDiagnostic);
		return "Result";
	}
}
