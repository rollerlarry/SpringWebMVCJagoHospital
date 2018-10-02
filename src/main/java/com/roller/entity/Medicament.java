package com.roller.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "tbmedicament")
public class Medicament {
	@Id
	int idMedicament;
	String medicamentName;
	int idMedicamentGroup;
	String medicamentType;
	String medicamentFunction;
	String medicamentProducer;
	String medicamentImage;
	
	
	public Medicament() {
		super();
	}
	
	
	public Medicament(String medicamentName, int idMedicamentGroup, String medicamentType, String medicamentFunction,
			String medicamentProducer,String medicamentImage) {
		super();
		this.medicamentName = medicamentName;
		this.idMedicamentGroup = idMedicamentGroup;
		this.medicamentType = medicamentType;
		this.medicamentFunction = medicamentFunction;
		this.medicamentProducer = medicamentProducer;
		this.medicamentImage = medicamentImage;
	}


	public int getIdMedicament() {
		return idMedicament;
	}


	public void setIdMedicament(int idMedicament) {
		this.idMedicament = idMedicament;
	}


	public String getMedicamentName() {
		return medicamentName;
	}


	public void setMedicamentName(String medicamentName) {
		this.medicamentName = medicamentName;
	}


	public int getIdMedicamentGroup() {
		return idMedicamentGroup;
	}


	public void setIdMedicamentGroup(int idMedicamentGroup) {
		this.idMedicamentGroup = idMedicamentGroup;
	}


	public String getMedicamentType() {
		return medicamentType;
	}


	public void setMedicamentType(String medicamentType) {
		this.medicamentType = medicamentType;
	}


	public String getMedicamentFunction() {
		return medicamentFunction;
	}


	public void setMedicamentFunction(String medicamentFunction) {
		this.medicamentFunction = medicamentFunction;
	}


	public String getMedicamentProducer() {
		return medicamentProducer;
	}


	public void setMedicamentProducer(String medicamentProducer) {
		this.medicamentProducer = medicamentProducer;
	}


	public String getMedicamentImage() {
		return medicamentImage;
	}


	public void setMedicamentImage(String medicamentImage) {
		this.medicamentImage = medicamentImage;
	}
	
	
	
	
	
	
	
	
}
