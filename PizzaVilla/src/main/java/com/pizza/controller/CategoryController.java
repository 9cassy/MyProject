package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.Category;
import com.pizza.service.CategoryService;

@Controller

public class CategoryController {
	@Autowired
	CategoryService categoryService;
	
	//Category Form
	@RequestMapping("/categoryForm")
	public String getCategoryForm(Model model) 
	{
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryService.listCategory());
		return "categoryForm";
	}
	
	//Button Click Action
	@RequestMapping("/addCategory")
	public String addCategory(@ModelAttribute("category") Category category) {
		categoryService.addCategory(category);
		
		return "redirect:/categoryForm";
	}
}
