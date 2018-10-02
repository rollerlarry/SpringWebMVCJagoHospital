package com.roller.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roller.dao.DiseasesGroupDAO;
import com.roller.daoimp.DiseasesGroupImp;
import com.roller.entity.DiseasesGroup;

@Service
public class DiseasesGroupServices implements DiseasesGroupImp{
	@Autowired
	DiseasesGroupDAO diseasesGroupDAO;

	public List<DiseasesGroup> getListDiseasesGroup() {
		return diseasesGroupDAO.getListDiseasesGroup();
	}
	
}
