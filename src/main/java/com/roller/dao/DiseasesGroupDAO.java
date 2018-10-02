package com.roller.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.roller.daoimp.DiseasesGroupImp;
import com.roller.entity.DiseasesGroup;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class DiseasesGroupDAO implements DiseasesGroupImp{
	
	@Autowired
	SessionFactory sessionFactory;
		
	public List<DiseasesGroup> getListDiseasesGroup() {
		Session session = sessionFactory.getCurrentSession();
		String sqlSelect = String.format("FROM tbdiseasesgroup");
		List<DiseasesGroup> listDiseasesGroups = session.createQuery(sqlSelect).getResultList();
		return listDiseasesGroups;
	}

}
