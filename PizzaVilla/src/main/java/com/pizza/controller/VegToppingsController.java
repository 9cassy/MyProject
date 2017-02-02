package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.VegToppings;
import com.pizza.service.VegToppingsService;

@Controller

public class VegToppingsController {
	@Autowired
	VegToppingsService vegToppingsService;
	
	@RequestMapping("/vegToppingsForm")
	public String getVegToppingsForm(Model model) 
	{
		model.addAttribute("vegToppings", new VegToppings());
		return "vegToppingsForm";
	}
	@RequestMapping("/addVegToppings")
	public String addVegToppings(@ModelAttribute("vegToppings") VegToppings vegToppings) {
		vegToppingsService.addVegToppings(vegToppings);
		
		return "redirect:/vegToppings";
	}
}
