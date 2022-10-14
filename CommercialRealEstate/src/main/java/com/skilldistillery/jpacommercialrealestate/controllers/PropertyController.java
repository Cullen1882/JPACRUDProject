package com.skilldistillery.jpacommercialrealestate.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacommercialrealestate.data.PropertyDAO;

@Controller
public class PropertyController {
	
	@Autowired
	private PropertyDAO dao;

	
	@RequestMapping(path= {"/","home.do"})
	public String index(Model model) {
		model.addAttribute("properties", dao.findAll());
		return "index";
	}
}
