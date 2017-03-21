package com.pizza.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.SubCategoryDAOImpl;
import com.pizza.model.SubCategory;

@Service
@Transactional
public class SubCategoryService {
	@Autowired
	SubCategoryDAOImpl subCategoryDAOImpl;
	
	public void addSubCategory(SubCategory subCategory) 
	{
		this.subCategoryDAOImpl.addSubCategory(subCategory);		
	}
	
	public List<SubCategory> listSubCategory()
	{
		return this.subCategoryDAOImpl.listSubCategory();
	}
	
	public SubCategory getSubCategoryByName(String subCategoryName) {
		return subCategoryDAOImpl.getSubCategoryByName(subCategoryName);
	}
	
	public SubCategory getSubCategoryById(int subCategoryId) {
		return subCategoryDAOImpl.getSubCategoryById(subCategoryId);
	}
}
