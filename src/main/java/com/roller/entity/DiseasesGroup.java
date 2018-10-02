package com.roller.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "tbdiseasesgroup")
public class DiseasesGroup {
	@Id
	int idDiseasesGroup;
	String diseasesGroupName;
	String diseasesGroupSummary;
	String diseasesGroupImage;
	
	public DiseasesGroup(int idDiseasesGroup, String diseasesGroupName, String diseasesGroupSummary,
			String diseasesGroupImage) {
		this.idDiseasesGroup = idDiseasesGroup;
		this.diseasesGroupName = diseasesGroupName;
		this.diseasesGroupSummary = diseasesGroupSummary;
		this.diseasesGroupImage = diseasesGroupImage;
	}

	public DiseasesGroup() {

	}

	public int getIdDiseasesGroup() {
		return idDiseasesGroup;
	}

	public void setIdDiseasesGroup(int idDiseasesGroup) {
		this.idDiseasesGroup = idDiseasesGroup;
	}

	public String getDiseasesGroupName() {
		return diseasesGroupName;
	}

	public void setDiseasesGroupName(String diseasesGroupName) {
		this.diseasesGroupName = diseasesGroupName;
	}

	public String getDiseasesGroupSummary() {
		return diseasesGroupSummary;
	}

	public void setDiseasesGroupSummary(String diseasesGroupSummary) {
		this.diseasesGroupSummary = diseasesGroupSummary;
	}

	public String getDiseasesGroupImage() {
		return diseasesGroupImage;
	}

	public void setDiseasesGroupImage(String diseasesGroupImage) {
		this.diseasesGroupImage = diseasesGroupImage;
	}
	
	
	
	
	
	
}
