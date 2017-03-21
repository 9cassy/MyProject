package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.Type;
import com.pizza.model.Toppings;
import com.pizza.model.Crust;
import com.pizza.model.Item;
import com.pizza.service.TypeService;
import com.pizza.service.ToppingsService;
import com.pizza.service.CrustService;
import com.pizza.service.ItemService;

@Controller
public class ItemController {

	@Autowired
	private ItemService itemService;
	@Autowired
	private TypeService typeService;
	@Autowired
	private CrustService crustService;
	@Autowired
	private ToppingsService toppingsService;
	
	
	//Item Form
	@RequestMapping("itemForm")
	public String getItemForm(Model model) 
	{
		model.addAttribute("item", new Item());
		model.addAttribute("type", new Type());
		model.addAttribute("crust", new Crust());
		model.addAttribute("toppings", new Toppings());
		
		//this is called because we want to select a SUBCATEGORY while creating new item
		model.addAttribute("typeList", typeService.listType());
		//this is called because we want to select a CRUST while creating new item
		model.addAttribute("crustList", crustService.listCrust());
		//this is called because we want to select a TOPPINGS while creating new item
		model.addAttribute("toppingsList", toppingsService.listToppings());
		//this is used to get the item list
		model.addAttribute("itemList", itemService.listItem());
		return "itemForm";
	}
	
	//Button Click Action
	@RequestMapping("addItem")
	@Transactional
	public String addItem(@ModelAttribute("item") Item item) 
	{
		
		Type type = typeService.getTypeByName(item.getType().getTypeName());
		typeService.addType(type);
		item.setType(type);
		item.setTypeId(type.getTypeId());
		
		Crust crust = crustService.getCrustByName(item.getCrust().getCrustName());
		crustService.addCrust(crust);
		item.setCrust(crust);
		item.setCrustId(crust.getCrustId());
		
		Toppings toppings = toppingsService.getToppingsByName(item.getToppings().getToppingsName());
		toppingsService.addToppings(toppings);
		item.setToppings(toppings);
		item.setToppingsId(toppings.getToppingsId());
		
		itemService.addItem(item);
		return "redirect:/itemForm";
	}

	
	/*
	@RequestMapping("/updatesubcustomize")
	public String updateItem(@ModelAttribute("subcustomize") Item subcustomize) {
		itemService.updateItem(subcustomize);

		return "redirect:/itemForm";
	}

	
	 * @RequestMapping("/getsubcustomizebyid") public String
	 * getItemById(@ModelAttribute("subcustomize") Item
	 * subcustomize) {
	 * itemServiceImpl.getItemById(subcustomize.getItemId())
	 * ;
	 * 
	 * return "redirect:/itemForm"; }
	

	@RequestMapping("/removesubcustomize")
	public String removeCustomize(@ModelAttribute("subcustomize") Item subcustomize) {
		itemService.removeItem(subcustomize);

		return "redirect:/itemForm";
	}
	 */
}
