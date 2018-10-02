package com.roller.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name = "tbsymptom")
public class Symptom {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idSymptom;
	String nameSymptom;
	int checkSymptom;
	
	@OneToOne
	@JoinColumn(name = "idSymptom")
	Diseases diseases;
	
	public Symptom(int idSymptom, String nameSymptom, int checkSymptom) {
		this.idSymptom = idSymptom;
		this.nameSymptom = nameSymptom;
		this.checkSymptom = checkSymptom;
	}

	public Symptom() {	

	}

	public int getIdSymptom() {
		return idSymptom;
	}

	public void setIdSymptom(int idSymptom) {
		this.idSymptom = idSymptom;
	}

	public String getNameSymptom() {
		return nameSymptom;
	}

	public void setNameSymptom(String nameSymptom) {
		this.nameSymptom = nameSymptom;
	}

	public int getCheckSymptom() {
		return checkSymptom;
	}

	public void setCheckSymptom(int checkSymptom) {
		this.checkSymptom = checkSymptom;
	}
	
	
	
	
}
