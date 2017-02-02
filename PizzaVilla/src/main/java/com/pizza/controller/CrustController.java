package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.Crust;
import com.pizza.service.CrustService;

@Controller

public class CrustController {
	@Autowired
	CrustService crustService;
	
	@RequestMapping("/crustForm")
	public String getCrustForm(Model model) 
	{
		model.addAttribute("crust", new Crust());
		return "crustForm";
	}
	@RequestMapping("/addCrust")
	public String addCrust(@ModelAttribute("crust") Crust crust) {
		crustService.addCrust(crust);
		
		return "redirect:/crust";
	}
}
