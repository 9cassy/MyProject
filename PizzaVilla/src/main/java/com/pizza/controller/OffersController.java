package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.Offers;
import com.pizza.service.OffersService;

@Controller

public class OffersController {
	@Autowired
	OffersService offersService;
	
	@RequestMapping("/offersForm")
	public String getOffersForm(Model model) 
	{
		model.addAttribute("offers", new Offers());
		return "offersForm";
	}
	@RequestMapping("/addOffers")
	public String addOffers(@ModelAttribute("offers") Offers offers) {
		offersService.addOffers(offers);
		
		return "redirect:/offers";
	}
}
