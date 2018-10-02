package com.roller.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roller.dao.AccountDAO;
import com.roller.daoimp.AccountImp;

@Service
public class AccountServices implements AccountImp {
	
	@Autowired
	AccountDAO accountDAO;

	public boolean checkLogin(String userName, String passWord) {
		
		if (accountDAO.checkLogin(userName, passWord)) {
			return true;
		}
		return false;
	}

	public boolean addNewAccount(String userName, String passWord) {
		if (accountDAO.addNewAccount(userName, passWord)) {
			return true;
		}
		return false;
	}
	
	
}
