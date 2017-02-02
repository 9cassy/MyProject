package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.PizzaBoxSpecial;
import com.pizza.service.PizzaBoxSpecialService;

@Controller

public class PizzaBoxSpecialController {
	@Autowired
	PizzaBoxSpecialService pizzaBoxSpecialService;
	
	@RequestMapping("/pizzaBoxSpecialForm")
	public String getPizzaBoxSpecialForm(Model model) 
	{
		model.addAttribute("pizzaBoxSpecial", new PizzaBoxSpecial());
		return "pizzaBoxSpecialForm";
	}
	@RequestMapping("/addPizzaBoxSpecial")
	public String addPizzaBoxSpecial(@ModelAttribute("pizzaBoxSpecial") PizzaBoxSpecial pizzaBoxSpecial) {
		pizzaBoxSpecialService.addPizzaBoxSpecial(pizzaBoxSpecial);
		
		return "redirect:/pizzaBoxSpecial";
	}
}
