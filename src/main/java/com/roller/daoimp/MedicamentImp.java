package com.roller.daoimp;

import java.util.List;

import com.roller.entity.Medicament;

public interface MedicamentImp {
	List<Medicament> getListMedicament();
	Medicament getMedicament(int idMedicament);
}
