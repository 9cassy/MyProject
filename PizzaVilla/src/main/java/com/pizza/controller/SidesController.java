package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.Sides;
import com.pizza.service.SidesService;

@Controller

public class SidesController {
	@Autowired
	SidesService sidesService;
	
	@RequestMapping("/sidesForm")
	public String getSidesForm(Model model) 
	{
		model.addAttribute("sides", new Sides());
		return "sidesForm";
	}
	@RequestMapping("/addSides")
	public String addSides(@ModelAttribute("sides") Sides sides) {
		sidesService.addSides(sides);
		
		return "redirect:/sides";
	}
}
