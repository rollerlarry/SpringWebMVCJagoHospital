package com.roller.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.roller.daoimp.MedicamentImp;
import com.roller.entity.Medicament;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class MedicamentDAO implements MedicamentImp{
	@Autowired
	SessionFactory sessionFactory;
	public List<Medicament> getListMedicament() {
		Session session = sessionFactory.getCurrentSession();
		List<Medicament> listMedicament = session.createQuery("FROM tbmedicament").getResultList();
		return listMedicament;
	}
	public Medicament getMedicament(int idMedicament) {
		Session session = sessionFactory.getCurrentSession();
		String sqlSelect = String.format("FROM tbmedicament WHERE idMedicament = %2d", idMedicament);
		Medicament medicament = (Medicament) session.createQuery(sqlSelect).uniqueResult();
		return medicament;
	}
	
}
