package com.roller.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.naming.event.ObjectChangeListener;
import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.roller.daoimp.DiseasesImp;
import com.roller.entity.Diseases;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class DiseasesDAO implements DiseasesImp{
	@Autowired 
	SessionFactory sessionFactory;
	List<Diseases> listDiseasesSQL;
	
	@Transactional
	public String getListSymptomIDOfDiseases(int idDiseases) {
		Session session = sessionFactory.getCurrentSession();
		String sqlSelect = String.format("FROM tbdiseases WHERE idDiseases = %2d", idDiseases);
		Diseases diseases = (Diseases) session.createQuery(sqlSelect).uniqueResult();

		return diseases.getListSymptom();
	}
	
	@Transactional
	public List<Diseases> getListSymptomOfDiseases() {
		Session session = sessionFactory.getCurrentSession();
		String sqlSelect = String.format("FROM tbdiseases");
		List<Diseases> listDiseases = session.createQuery(sqlSelect).getResultList();

		return listDiseases;
	}
	
	@Transactional
	public List<Diseases> getListDiseasesForDuagnostic(List<String> listIDSymptom) {

		List<Diseases> listResult = new ArrayList<Diseases>();

		List<Diseases> listDiseases = getListSymptomOfDiseases();
		for(Diseases diseases : listDiseases) {
			List<String> listSource = new ArrayList<String>();
			listSource.add(diseases.getListSymptom());
			for(String list : listSource) {
				StringTokenizer tokenizer1 = new StringTokenizer(list,",");
				List<String> listinarray = new ArrayList<String>();
				while (tokenizer1.hasMoreElements()) {
					listinarray.add(tokenizer1.nextToken());
				}
				int count = 0;
				for (int i = 0; i < listIDSymptom.size(); i++) {
					for (int j = 0; j < listinarray.size(); j++) {
						if(listIDSymptom.get(i).equals(listinarray.get(j))) {
							count++;
						}
					}
				}
				if (count == listIDSymptom.size()) {
					listResult.add(diseases);				
				}
			}
		}

		return listResult;
	}

	public Diseases getDiseasesForID(int idDiseases) {
		Session session = sessionFactory.getCurrentSession();
		String sqlSelect = String.format("FROM tbdiseases WHERE idDiseases = %2d", idDiseases);
		Diseases diseases = (Diseases) session.createQuery(sqlSelect).uniqueResult();
		return diseases;
	}

	public List<Diseases> getListDiseasesForDiseasesGroup(int idDiseasesGroup) {
		Session session = sessionFactory.getCurrentSession();
		String sqlSelect = String.format("FROM tbdiseases WHERE idDiseasesGroup = %2d",idDiseasesGroup);
		List<Diseases> listDiseasesGroup = session.createQuery(sqlSelect).getResultList();
		
		return listDiseasesGroup;
	}
	
	


	
	
	
}
