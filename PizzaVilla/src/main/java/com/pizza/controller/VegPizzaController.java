package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.VegPizza;
import com.pizza.service.VegPizzaService;

@Controller

public class VegPizzaController {
	@Autowired
	VegPizzaService vegPizzaService;
	
	@RequestMapping("/vegPizzaForm")
	public String getVegPizzaForm(Model model) 
	{
		model.addAttribute("vegPizza", new VegPizza());
		return "vegPizzaForm";
	}
	@RequestMapping("/addVegPizza")
	public String addVegPizza(@ModelAttribute("vegPizza") VegPizza vegPizza) {
		vegPizzaService.addVegPizza(vegPizza);
		
		return "redirect:/vegPizza";
	}
}
