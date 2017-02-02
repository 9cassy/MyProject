package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.ConePizza;
import com.pizza.service.ConePizzaService;

@Controller

public class ConePizzaController {
	@Autowired
	ConePizzaService conePizzaService;
	
	@RequestMapping("/conePizzaForm")
	public String getConePizzaForm(Model model) 
	{
		model.addAttribute("conePizza", new ConePizza());
		return "conePizzaForm";
	}
	@RequestMapping("/addConePizza")
	public String addConePizza(@ModelAttribute("conePizza") ConePizza conePizza) {
		conePizzaService.addConePizza(conePizza);
		
		return "redirect:/conePizza";
	}
}
