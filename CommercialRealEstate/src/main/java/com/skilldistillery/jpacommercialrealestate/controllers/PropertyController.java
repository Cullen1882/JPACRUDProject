package com.skilldistillery.jpacommercialrealestate.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.jpacommercialrealestate.data.PropertyDAO;
import com.skilldistillery.jpacommercialrealestate.entities.Property;

@Controller
public class PropertyController {
	
	@Autowired
	private PropertyDAO dao;

	
	@RequestMapping(path= {"/","home.do"})
	public String index(Model model) {
		model.addAttribute("properties", dao.findAll());
		return "index";
	}
	
	@RequestMapping(path="showProp.do", method=RequestMethod.GET)
	public String findPropById (int id, Model model) {
		model.addAttribute("property",dao.findById(id));
		return "showProp";
	}
	@RequestMapping(path="addProp.do", method=RequestMethod.POST)
	public String add(Property property, Model model) {
		model.addAttribute("added", dao.create(property));
		return "showProp";
	}
	@RequestMapping(path="updateForm.do", method=RequestMethod.GET)
	public String updateForm(int id, Model model) {
		model.addAttribute("updateForm", dao.findById(id));
		return "updateForm";
	}
	@RequestMapping(path="update.do", method=RequestMethod.GET)
	public String update(Integer id, Property property, Model model) {
		model.addAttribute("update", dao.update(id, property));
		return "showProp";
	}
}
