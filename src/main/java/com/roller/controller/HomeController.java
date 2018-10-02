package com.roller.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.roller.entity.DiseasesGroup;
import com.roller.services.DiseasesGroupServices;

@Controller
@RequestMapping("/")
public class HomeController {
	@Autowired
	DiseasesGroupServices diseasesGroupServices;
	
	@GetMapping
	@Transactional
	public String Home(ModelMap modelMap, HttpSession httpSession) {
		
//		ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
//		DatabaseConnection databaseConnection = (DatabaseConnection) context.getBean("databaseWeb");
//		
//		databaseConnection.getListEmployees();
		
//		org.hibernate.Session session = sessionFactory.getCurrentSession();
//		String sqlSelect = "FROM tbemployee";
//		List<SQLEmployee> listEm = session.createQuery(sqlSelect).getResultList();
//		
//		for(SQLEmployee em : listEm) {
//			System.out.println(em.getName());
//		}
		
		if (httpSession.getAttribute("userName") != null) {
			String userName = (String) httpSession.getAttribute("userName");
			modelMap.addAttribute("userName", userName);
		}
		
		List<DiseasesGroup> listDiseasesGroup = diseasesGroupServices.getListDiseasesGroup();
		modelMap.addAttribute("listDiseasesGroup", listDiseasesGroup);
		
		
		return "Home";
	}
}
