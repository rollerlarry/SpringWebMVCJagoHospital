package com.roller.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "tbaccounts")
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idAccount;
	String userName;
	String passWord;
	String dateCreated;
	
	public Account(String userName, String passWord) {
		this.userName = userName;
		this.passWord = passWord;
	}

	public Account() {
		
	}

	public int getIdAccount() {
		return idAccount;
	}

	public void setIdAccount(int idAccount) {
		this.idAccount = idAccount;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(String dateCreated) {
		this.dateCreated = dateCreated;
	}





	
	
	
	
	
	
}
