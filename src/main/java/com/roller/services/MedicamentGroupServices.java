package com.roller.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roller.dao.MedicamentGroupDAO;
import com.roller.daoimp.MedicamentGroupImp;
import com.roller.entity.MedicamentGroup;

@Service
public class MedicamentGroupServices implements MedicamentGroupImp{
	@Autowired
	MedicamentGroupDAO medicamentGroupDAO;
	public List<MedicamentGroup> getListMedicamentGroup() {
		return medicamentGroupDAO.getListMedicamentGroup();
	}
	
}
