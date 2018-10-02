package com.roller.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "tbmedicamentgroup")
public class MedicamentGroup {
	@Id
	int idMedicamentGroup;
	String medicamentGroupName;
	String medicamentGroupSummary;
	
	public MedicamentGroup() {
	}
	public MedicamentGroup(int idMedicamentGroup, String medicamentGroupName, String medicamentGroupSummary) {
		this.idMedicamentGroup = idMedicamentGroup;
		this.medicamentGroupName = medicamentGroupName;
		this.medicamentGroupSummary = medicamentGroupSummary;
	}
	public int getIdMedicamentGroup() {
		return idMedicamentGroup;
	}
	public void setIdMedicamentGroup(int idMedicamentGroup) {
		this.idMedicamentGroup = idMedicamentGroup;
	}
	public String getMedicamentGroupName() {
		return medicamentGroupName;
	}
	public void setMedicamentGroupName(String medicamentGroupName) {
		this.medicamentGroupName = medicamentGroupName;
	}
	public String getMedicamentGroupSummary() {
		return medicamentGroupSummary;
	}
	public void setMedicamentGroupSummary(String medicamentGroupSummary) {
		this.medicamentGroupSummary = medicamentGroupSummary;
	}
	
	
	
}
