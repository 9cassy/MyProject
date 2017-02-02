package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.NonVegPizza;
import com.pizza.service.NonVegPizzaService;

@Controller

public class NonVegPizzaController {
	@Autowired
	NonVegPizzaService nonVegPizzaService;
	
	@RequestMapping("/nonVegPizzaForm")
	public String getNonVegPizzaForm(Model model) 
	{
		model.addAttribute("nonVegPizza", new NonVegPizza());
		return "nonVegPizzaForm";
	}
	@RequestMapping("/addNonVegPizza")
	public String addNonVegPizza(@ModelAttribute("nonVegPizza") NonVegPizza nonVegPizza) {
		nonVegPizzaService.addNonVegPizza(nonVegPizza);
		
		return "redirect:/nonVegPizza";
	}
}
