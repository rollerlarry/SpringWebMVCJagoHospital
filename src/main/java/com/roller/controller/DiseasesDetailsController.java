package com.roller.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.roller.entity.Diseases;
import com.roller.entity.Symptom;
import com.roller.services.DiseasesServices;
import com.roller.services.SymptomServices;

@Controller
@RequestMapping("Diseases-details")
public class DiseasesDetailsController {
	@Autowired
	DiseasesServices diseasesServices;
	
	@Autowired 
	SymptomServices symptomServices;
	
	@GetMapping("/{idDiseases}")
	@Transactional
	public String Default(@PathVariable int idDiseases, ModelMap modelMap) {

		Diseases diseases = diseasesServices.getDiseasesForID(idDiseases);
		modelMap.addAttribute("diseases", diseases);
		
		
		String listSymptomForDiseases = diseases.getListSymptom();
		StringTokenizer tokenizer = new StringTokenizer(listSymptomForDiseases, ",");
		List<String> listSymptomInArray  = new ArrayList<String>();
		while(tokenizer.hasMoreTokens()) {
			listSymptomInArray.add(tokenizer.nextToken());
		}

		List<Symptom> listAllSymptomOfDiseases = symptomServices.getListAllSymptomOfOneDiseases(listSymptomInArray);
		modelMap.addAttribute("listAllSymptomOfDiseases", listAllSymptomOfDiseases);
		
		return "DiseasesDetails";
	}
}
