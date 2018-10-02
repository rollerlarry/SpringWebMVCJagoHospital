package com.roller.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.roller.daoimp.AccountImp;
import com.roller.entity.Account;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class AccountDAO implements AccountImp{
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public boolean checkLogin(String userName,String passWord) {
		Session session = sessionFactory.getCurrentSession();
		List<Account> listAccount = (List<Account>) session.createQuery("from tbaccounts WHERE userName='"+userName+"' AND passWord='"+passWord+"'").getResultList();
		if (listAccount.size() > 0) {
			return true;
		}
		return false;
	}
	
	@Transactional
	public boolean addNewAccount(String userName, String passWord) {
		Session session = sessionFactory.getCurrentSession();
		Account account = new Account(userName,passWord);
		session.save(account);
		return true;
	}
}
