package com.roller.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "tbdiseases")
public class Diseases {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idDiseases;
	String diseasesName;
	String diseasesSummary;
	String listSymptom;
	String diseasesReason;
	String diseasesLevel;
	String diseasesTreatment;
	int checkDiseases;
	int idDiseasesGroup;
	String diseasesImage;

	public Diseases(int idDiseases, String diseasesName, String diseasesSummary, String listSymptom,
			String diseasesReason, String diseasesLevel, String diseasesTreatment, int checkDiseases,
			int idDiseasesGroup, String diseasesImage) {
		super();
		this.idDiseases = idDiseases;
		this.diseasesName = diseasesName;
		this.diseasesSummary = diseasesSummary;
		this.listSymptom = listSymptom;
		this.diseasesReason = diseasesReason;
		this.diseasesLevel = diseasesLevel;
		this.diseasesTreatment = diseasesTreatment;
		this.checkDiseases = checkDiseases;
		this.idDiseasesGroup = idDiseasesGroup;
		this.diseasesImage = diseasesImage;
	}

	public Diseases() {

	}

	public int getIdDiseases() {
		return idDiseases;
	}

	public void setIdDiseases(int idDiseases) {
		this.idDiseases = idDiseases;
	}

	public String getDiseasesName() {
		return diseasesName;
	}

	public void setDiseasesName(String diseasesName) {
		this.diseasesName = diseasesName;
	}

	public String getDiseasesSummary() {
		return diseasesSummary;
	}

	public void setDiseasesSummary(String diseasesSummary) {
		this.diseasesSummary = diseasesSummary;
	}


	public String getListSymptom() {
		return listSymptom;
	}

	public void setListSymptom(String idSymptom) {
		this.listSymptom = idSymptom;
	}

	public String getDiseasesReason() {
		return diseasesReason;
	}

	public void setDiseasesReason(String diseasesReason) {
		this.diseasesReason = diseasesReason;
	}

	public String getDiseasesLevel() {
		return diseasesLevel;
	}

	public void setDiseasesLevel(String diseasesLevel) {
		this.diseasesLevel = diseasesLevel;
	}

	public String getDiseasesTreatment() {
		return diseasesTreatment;
	}

	public void setDiseasesTreatment(String diseasesTreatment) {
		this.diseasesTreatment = diseasesTreatment;
	}

	public int getCheckDiseases() {
		return checkDiseases;
	}

	public void setCheckDiseases(int checkDiseases) {
		this.checkDiseases = checkDiseases;
	}

	public int getIdDiseasesGroup() {
		return idDiseasesGroup;
	}

	public void setIdDiseasesGroup(int idDiseasesGroup) {
		this.idDiseasesGroup = idDiseasesGroup;
	}

	public String getDiseasesImage() {
		return diseasesImage;
	}

	public void setDiseasesImage(String diseasesImage) {
		this.diseasesImage = diseasesImage;
	}
	
	
	
	
	
	
	
	
	
}
