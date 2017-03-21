package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.Customize;
import com.pizza.service.CustomizeService;

@Controller
public class CustomizeController 
{
	@Autowired
	CustomizeService customizeService;
	
	//Display Customize Form
	@RequestMapping("customizeForm")
	public String getCustomizeForm(Model model) 
	{
		model.addAttribute("customize", new Customize());
		model.addAttribute("customizeList", customizeService.listCustomize());
		return "customizeForm";
	}
	
	//Button Click Action to add a new customize
	@RequestMapping("addCustomize")
	public String addCustomize(@ModelAttribute("customize") Customize customize) 
	{
		customizeService.addCustomize(customize);
		
		return "redirect:/customizeForm"; //Because work is done... Redirect means to Refresh & open
	}
	
	//To Edit Customize
	@RequestMapping("updateCustomize-{customizeId}") //creating URL
	public String updateCustomize(@PathVariable("customizeId") int customizeId, Model model) //Model is used to take data to front page, @PathVariable has to be told which column it is.
	{
		model.addAttribute("customize",customizeService.getCustomizeById(customizeId));
		return "customizeForm"; //here the values have to be added to the page and then displayed
	}
	 
	//To Delete Customize
	@RequestMapping("deleteCustomize-{customizeId}") //creating URL
	public String deleteCustomize(@PathVariable("customizeId") int customizeId)
	{
		customizeService.deleteCustomize(customizeId);
		return "redirect:/customizeForm"; //Because work is done... Redirect means to Refresh & open
	}
}
