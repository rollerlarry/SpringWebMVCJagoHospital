package com.roller.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.roller.daoimp.MedicamentGroupImp;
import com.roller.entity.MedicamentGroup;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class MedicamentGroupDAO implements MedicamentGroupImp{

	@Autowired
	SessionFactory sessionFactory;
	
	public List<MedicamentGroup> getListMedicamentGroup() {
		Session session  = sessionFactory.getCurrentSession();
		List<MedicamentGroup> listMedicamentGroup = session.createQuery("FROM tbmedicamentgroup").getResultList();
		return listMedicamentGroup;
	}
	
}
