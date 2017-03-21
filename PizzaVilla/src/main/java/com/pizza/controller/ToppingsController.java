package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.Toppings;
import com.pizza.service.ToppingsService;

@Controller
public class ToppingsController {
	@Autowired
	ToppingsService toppingsService;
	
	//Toppings Form
	@RequestMapping("toppingsForm")
	public String getToppingsForm(Model model) 
	{
		model.addAttribute("toppings", new Toppings());
		model.addAttribute("toppingsList", toppingsService.listToppings());
		return "toppingsForm";
	}
	
	//Button Click Action
	@RequestMapping("addToppings")
	public String addToppings(@ModelAttribute("toppings") Toppings toppings) {
		toppingsService.addToppings(toppings);
		
		return "redirect:/toppingsForm";
	}
	
	
}
