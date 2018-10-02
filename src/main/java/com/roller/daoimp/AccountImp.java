package com.roller.daoimp;

public interface AccountImp {
	boolean checkLogin(String userName, String passWord);
	boolean addNewAccount(String userName, String passWord);
}
