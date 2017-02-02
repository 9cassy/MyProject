package com.pizza.dao;

import java.util.List;

import com.pizza.model.Category;

public interface CategoryDAO 
{
	public void addCategory(Category category);
	public void updateCategory(Category category);
	public List<Category> listCategory();
	public Category getCategoryById(int categoryId);
	public void removeCategory(int categoryId);
}
