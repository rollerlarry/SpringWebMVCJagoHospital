package com.roller.daoimp;

import java.util.List;

import com.roller.entity.Symptom;

public interface SymptomImp {
	List<Symptom> getListSymptom();
	List<Symptom> getListSymptomForDiseasesID(int idDiseases);
	List<Symptom> getListAllSymptomOfOneDiseases(List<String> listIDSymptom);
}
