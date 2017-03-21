package com.pizza.dao;

import java.util.List;

import com.pizza.model.SubCategory;

public interface SubCategoryDAO {
	public void addSubCategory(SubCategory subCategory);
	public void updateSubCategory(SubCategory subCategory);
	public List<SubCategory> listSubCategory();
	public SubCategory getSubCategoryById(int subCategoryId);
	public void removeSubCategory(int subCategoryId);
	public SubCategory getSubCategoryByName(String subCategoryName);
}
