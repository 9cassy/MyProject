package com.pizza.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.CategoryDAOImpl;
import com.pizza.model.Category;

@Service
@Transactional
public class CategoryService 
{
	@Autowired
	CategoryDAOImpl categoryDAOImpl;
	
	public void addCategory(Category category) 
	{
		this.categoryDAOImpl.addCategory(category);		
	}
	
	public List<Category> listCategory()
	{
		return this.categoryDAOImpl.listCategory();
	}
	
	public String listCategoryByJSON()
	{
		return this.categoryDAOImpl.listCategoryByJSON();
	}
	
	public Category getCategoryByName(String categoryName) {
		return categoryDAOImpl.getCategoryByName(categoryName);
	}
	
	public Category getCategoryById(int categoryId) {
		return categoryDAOImpl.getCategoryById(categoryId);
	}
	
	public void deleteCategory(int categoryId){
		this.categoryDAOImpl.deleteCategory(categoryId);	
	}
}
