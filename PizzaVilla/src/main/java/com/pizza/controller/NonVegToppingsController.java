package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.NonVegToppings;
import com.pizza.service.NonVegToppingsService;

@Controller

public class NonVegToppingsController {
	@Autowired
	NonVegToppingsService nonVegToppingsService;
	
	@RequestMapping("/nonVegToppingsForm")
	public String getNonVegToppingsForm(Model model) 
	{
		model.addAttribute("nonVegToppings", new NonVegToppings());
		return "nonVegToppingsForm";
	}
	@RequestMapping("/addNonVegToppings")
	public String addNonVegToppings(@ModelAttribute("nonVegToppings") NonVegToppings nonVegToppings) {
		nonVegToppingsService.addNonVegToppings(nonVegToppings);
		
		return "redirect:/nonVegToppings";
	}
}
