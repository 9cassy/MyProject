package com.pizza.dao;

import java.util.List;

import com.pizza.model.Category;

public interface CategoryDAO 
{
	public void addCategory(Category category);
	public void updateCategory(Category category);
	public List<Category> listCategory();
	public String listCategoryByJSON(); //For AngularJS
	public Category getCategoryById(int categoryId); //For Edit & Delete
	public void removeCategory(int categoryId);
	public Category getCategoryByName(String categoryName);
	public void deleteCategory(int categoryId);
}
