package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.Drinks;
import com.pizza.service.DrinksService;

@Controller

public class DrinksController {
	@Autowired
	DrinksService drinksService;
	
	@RequestMapping("/drinksForm")
	public String getDrinksForm(Model model) 
	{
		model.addAttribute("drinks", new Drinks());
		model.addAttribute("drinksList", drinksService.listDrinks());
		return "drinksForm";
	}
	@RequestMapping("/addDrinks")
	public String addDrinks(@ModelAttribute("drinks") Drinks drinks) {
		drinksService.addDrinks(drinks);
		
		return "redirect:/drinks";
	}
}
