package com.pizza.controller;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.pizza.model.Category;
import com.pizza.model.User;
import com.pizza.service.CategoryService;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryService categoryService;
	
	//For SignUp & Login Modal Form Details
	@ModelAttribute("user")
	public User userMethod()
	{
		return new User();
	}
	
	
	//Display Category Form
	@RequestMapping("categoryForm")
	public String getCategoryForm(Model model) 
	{
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryService.listCategory());
		model.addAttribute("categoryListJSON", categoryService.listCategoryByJSON());
		return "categoryForm";
	}
	
	//Button Click Action to add a new category
	@RequestMapping("addCategory")
	public String addCategory(@Valid @ModelAttribute("category") Category category, BindingResult bindingResult, Model model) 
	{
		if(bindingResult.hasErrors())
		{
			model.addAttribute("categoryList", categoryService.listCategory());
			model.addAttribute("categoryListJSON", categoryService.listCategoryByJSON());
			return "categoryForm";
		}
		categoryService.addCategory(category);
		
		return "redirect:/categoryForm"; //Because work is done... Redirect means to Refresh & open
	}
	
	//To Edit Category
	@RequestMapping("updateCategory-{categoryId}") //creating URL
	public String updateCategory(@PathVariable("categoryId") int categoryId, Model model) //Model is used to take data to front page, @PathVariable has to be told which column it is.
	{
		model.addAttribute("category",categoryService.getCategoryById(categoryId));
		return "categoryForm"; //here the values have to be added to the page and then displayed
	}
	 
	//To Delete Category
	@RequestMapping("deleteCategory-{categoryId}") //creating URL
	public String deleteCategory(@PathVariable("categoryId") int categoryId)
	{
		categoryService.deleteCategory(categoryId);
		return "redirect:/categoryForm"; //Because work is done... Redirect means to Refresh & open
	}
	
	
	
}
