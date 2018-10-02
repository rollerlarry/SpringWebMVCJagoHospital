package com.roller.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.roller.daoimp.SymptomImp;
import com.roller.entity.Diseases;
import com.roller.entity.DiseasesGroup;
import com.roller.entity.Symptom;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SymptomDAO implements SymptomImp{
	@Autowired 
	SessionFactory sessionFactory;
	
	@Transactional
	public List<Symptom> getListSymptom() {
		Session session = sessionFactory.getCurrentSession();
		List<Symptom> listSymptom = session.createQuery("FROM tbsymptom").getResultList();
		return listSymptom;
	}

	public List<Symptom> getListSymptomForDiseasesID(int idDiseases) {
		Session session = sessionFactory.getCurrentSession();
		String sqlSelect = String.format("FROM tbdiseases WHERE idSymptom = %2d", 1);
		List<Diseases> listSymptom = session.createQuery(sqlSelect).getResultList();
		return null;
	}

	public List<Symptom> getListAllSymptomOfOneDiseases(List<String> listIDSymptom) {
		List<Symptom> listSymptom = new ArrayList<Symptom>();
		
		Session session = sessionFactory.getCurrentSession();
		for(String idSymptom : listIDSymptom) {
			String sqlSelect = String.format("FROM tbsymptom WHERE idSymptom = %s", idSymptom);
			Symptom symptom = (Symptom) session.createQuery(sqlSelect).uniqueResult();
			listSymptom.add(symptom);
		}
	
		return listSymptom;
	}
	
}
