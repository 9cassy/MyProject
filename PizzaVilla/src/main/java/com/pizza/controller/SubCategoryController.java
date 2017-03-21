package com.pizza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pizza.model.Category;
import com.pizza.model.SubCategory;
import com.pizza.model.User;
import com.pizza.service.CategoryService;
import com.pizza.service.SubCategoryService;

@Controller
public class SubCategoryController {
	
	@Autowired
	private SubCategoryService subCategoryService;
	@Autowired
	private CategoryService categoryService;
	
	//For SignUp & Login Modal Form Details
		@ModelAttribute("user")
		public User userMethod()
		{
			return new User();
		}
	
	//SubCategory Form
	@RequestMapping("subCategoryForm")
	public String getSubCategoryForm(Model model) 
	{
		model.addAttribute("subCategory", new SubCategory());
		model.addAttribute("category", new Category());
		
		//this is called because we want to select a CATEGORY while creating new subcategory
		model.addAttribute("categoryList", categoryService.listCategory());
		//this is used to get the subcategory list
		model.addAttribute("subCategoryList", subCategoryService.listSubCategory());
		
		model.addAttribute("user", new User());
		return "subCategoryForm";
	}
	
	//Button Click Action
	@RequestMapping("addSubCategory")
	@Transactional
	public String addSubCategory(@ModelAttribute("subCategory") SubCategory subCategory) {
		Category category = categoryService.getCategoryByName(subCategory.getCategory().getCategoryName());
		categoryService.addCategory(category);
		subCategory.setCategory(category);
		subCategory.setCategoryId(category.getCategoryId());
		subCategoryService.addSubCategory(subCategory);
		return "redirect:/subCategoryForm";
	}

	@RequestMapping("updateSubCategory-{subCategoryId}")
	public String updateSubCategory(@PathVariable("subCategoryId") int subCategoryId, Model model)
	{
		model.addAttribute("subCategory",subCategoryService.getSubCategoryById(subCategoryId));
		model.addAttribute("subCategoryList", subCategoryService.listSubCategory()); //Call SubCategory List
		return "subCategoryForm";
	}
	
	/*
	@RequestMapping("/updatesubcategory")
	public String updateSubCategory(@ModelAttribute("subcategory") SubCategory subcategory) {
		subCategoryService.updateSubCategory(subcategory);

		return "redirect:/subCategoryForm";
	}

	
	 * @RequestMapping("/getsubcategorybyid") public String
	 * getSubCategoryById(@ModelAttribute("subcategory") SubCategory
	 * subcategory) {
	 * subCategoryServiceImpl.getSubCategoryById(subcategory.getSubCategoryId())
	 * ;
	 * 
	 * return "redirect:/subCategoryForm"; }
	

	@RequestMapping("/removesubcategory")
	public String removeCategory(@ModelAttribute("subcategory") SubCategory subcategory) {
		subCategoryService.removeSubCategory(subcategory);

		return "redirect:/subCategoryForm";
	}
	 */
}
