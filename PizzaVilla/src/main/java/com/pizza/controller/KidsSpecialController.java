package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.KidsSpecial;
import com.pizza.service.KidsSpecialService;

@Controller

public class KidsSpecialController {
	@Autowired
	KidsSpecialService kidsSpecialService;
	
	@RequestMapping("/kidsSpecialForm")
	public String getKidsSpecialForm(Model model) 
	{
		model.addAttribute("kidsSpecial", new KidsSpecial());
		return "kidsSpecialForm";
	}
	@RequestMapping("/addKidsSpecial")
	public String addKidsSpecial(@ModelAttribute("kidsSpecial") KidsSpecial kidsSpecial) {
		kidsSpecialService.addKidsSpecial(kidsSpecial);
		
		return "redirect:/kidsSpecial";
	}
}
