package com.roller.daoimp;

import java.util.List;

import com.roller.entity.Diseases;

public interface DiseasesImp {

	String getListSymptomIDOfDiseases(int idDiseases);
	
	List<Diseases> getListDiseasesForDuagnostic(List<String> listIDSymptom);
	
	Diseases getDiseasesForID(int idDiseases);
	
	List<Diseases> getListDiseasesForDiseasesGroup(int idDiseasesGroup);
}

