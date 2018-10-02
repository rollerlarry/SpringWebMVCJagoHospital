package com.roller.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roller.dao.DiseasesDAO;
import com.roller.daoimp.DiseasesImp;
import com.roller.entity.Diseases;

@Service
public class DiseasesServices implements DiseasesImp{
	@Autowired
	DiseasesDAO diseasesDAO;

	public String getListSymptomIDOfDiseases(int idDiseases) {
		
		return diseasesDAO.getListSymptomIDOfDiseases(idDiseases);
	}

	public List<Diseases> getListDiseasesForDuagnostic(List<String> listIDSymptom) {
		
		return diseasesDAO.getListDiseasesForDuagnostic(listIDSymptom);
	}

	public Diseases getDiseasesForID(int idDiseases) {
		
		return diseasesDAO.getDiseasesForID(idDiseases);
	}

	public List<Diseases> getListDiseasesForDiseasesGroup(int idDiseasesGroup) {
		
		return diseasesDAO.getListDiseasesForDiseasesGroup(idDiseasesGroup);
	}
	
	


}
