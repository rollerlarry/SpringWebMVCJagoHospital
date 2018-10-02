package com.roller.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.roller.entity.Medicament;
import com.roller.entity.MedicamentGroup;
import com.roller.services.MedicamentGroupServices;
import com.roller.services.MedicamentServices;

@Controller
@RequestMapping("MedicamentGroup")
public class MedicamentGroupController {
	@Autowired
	MedicamentGroupServices medicamentGroupServices;
	
	@Autowired
	MedicamentServices medicamentServices;
	
	
	@GetMapping
	@Transactional
	public String Default(ModelMap modelMap) {
		List<MedicamentGroup> listMedicamentGroup = medicamentGroupServices.getListMedicamentGroup();

		modelMap.addAttribute("listMedicamentGroup", listMedicamentGroup);
		
		List<Medicament> listMedicament = medicamentServices.getListMedicament();
		modelMap.addAttribute("listMedicament", listMedicament);
		return "MedicamentGroup";
	}

}
