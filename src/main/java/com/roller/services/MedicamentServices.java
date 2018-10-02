package com.roller.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roller.dao.MedicamentDAO;
import com.roller.daoimp.MedicamentImp;
import com.roller.entity.Medicament;

@Service
public class MedicamentServices implements MedicamentImp{
	@Autowired 
	MedicamentDAO medicamentDAO;
	
	public List<Medicament> getListMedicament() {
		return medicamentDAO.getListMedicament();
	}

	public Medicament getMedicament(int idMedicament) {
		
		return medicamentDAO.getMedicament(idMedicament);
	}
	
}
