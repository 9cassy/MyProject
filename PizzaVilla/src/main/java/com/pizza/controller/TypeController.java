package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.Customize;
import com.pizza.model.Type;
import com.pizza.service.CustomizeService;
import com.pizza.service.TypeService;

@Controller
public class TypeController {
	
	@Autowired
	private TypeService typeService;
	@Autowired
	private CustomizeService customizeService;
	
	//Type Form
	@RequestMapping("typeForm")
	public String getTypeForm(Model model) 
	{
		model.addAttribute("type", new Type());
		model.addAttribute("customize", new Customize());
		
		//this is called because we want to select a CATEGORY while creating new subcustomize
		model.addAttribute("customizeList", customizeService.listCustomize());
		//this is used to get the subcustomize list
		model.addAttribute("typeList", typeService.listType());
		return "typeForm";
	}
	
	//Button Click Action
	@RequestMapping("addType")
	@Transactional
	public String addType(@ModelAttribute("type") Type type) {
		Customize customize = customizeService.getCustomizeByName(type.getCustomize().getCustomizeName());
		customizeService.addCustomize(customize);
		type.setCustomize(customize);
		type.setCustomizeId(customize.getCustomizeId());
		typeService.addType(type);
		return "redirect:/typeForm";
	}

	@RequestMapping("updateType-{typeId}")
	public String updateType(@PathVariable("typeId") int typeId, Model model)
	{
		model.addAttribute("type",typeService.getTypeById(typeId));
		model.addAttribute("typeList", typeService.listType()); //Call Type List
		return "typeForm";
	}
	
	/*
	@RequestMapping("/updatesubcustomize")
	public String updateType(@ModelAttribute("subcustomize") Type subcustomize) {
		typeService.updateType(subcustomize);

		return "redirect:/typeForm";
	}

	
	 * @RequestMapping("/getsubcustomizebyid") public String
	 * getTypeById(@ModelAttribute("subcustomize") Type
	 * subcustomize) {
	 * typeServiceImpl.getTypeById(subcustomize.getTypeId())
	 * ;
	 * 
	 * return "redirect:/typeForm"; }
	

	@RequestMapping("/removesubcustomize")
	public String removeCustomize(@ModelAttribute("subcustomize") Type subcustomize) {
		typeService.removeType(subcustomize);

		return "redirect:/typeForm";
	}
	 */
}
