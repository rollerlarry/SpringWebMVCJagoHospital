package com.roller.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.roller.entity.Medicament;
import com.roller.services.MedicamentServices;

@Controller
@RequestMapping("Medicament-details")
public class MedicamentController {
	@Autowired
	MedicamentServices medicamentServices;
	
	@GetMapping("/{idMedicament}")
	@Transactional
	public String Default(@PathVariable int idMedicament, ModelMap modelMap) {
		Medicament medicament = medicamentServices.getMedicament(idMedicament);
		modelMap.addAttribute("medicament", medicament);
		return "MedicamentDetails";
	}
}
