package com.roller.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roller.dao.SymptomDAO;
import com.roller.daoimp.SymptomImp;
import com.roller.entity.Symptom;

@Service
public class SymptomServices implements SymptomImp{
	@Autowired
	SymptomDAO symptomDAO;

	public List<Symptom> getListSymptom() {
		return symptomDAO.getListSymptom();
	}

	public List<Symptom> getListSymptomForDiseasesID(int idDiseases) {
		symptomDAO.getListSymptomForDiseasesID(idDiseases);
		return null;
	}

	public List<Symptom> getListAllSymptomOfOneDiseases(List<String> listIDSymptom) {
		
		return symptomDAO.getListAllSymptomOfOneDiseases(listIDSymptom);
	}
	
}
