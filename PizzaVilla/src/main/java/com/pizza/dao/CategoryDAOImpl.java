package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.pizza.dao.CategoryDAO;
import com.pizza.model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addCategory(Category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		//Session session = this.sessionFactory.getCurrentSession();
		//session.persist(category);
	}

	public void updateCategory(Category category) {
		
	}

	public List<Category> listCategory() {
		Session session=this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Category> CategoryList = session.createQuery("from Category").getResultList();
		return CategoryList;
	}

	//AngularJS
	public String listCategoryByJSON() {
		List<Category> categoryList = this.sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		//Converting List to String
		Gson g=new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String categoryListJSON=g.toJson(categoryList);
		return categoryListJSON;
	}
	//End AngularJS

	public Category getCategoryByName(String category) 
	{
		Session session =this.sessionFactory.getCurrentSession();
		Transaction tran = session.beginTransaction();
		List<Category> categorysList = session.createQuery("from Category where categoryName=" + "'" + category + "'").getResultList();
		tran.commit();
		session.close();
		return categorysList.get(0);
	}

	

	public Category getCategoryById(int categoryId) {
		Session session =this.sessionFactory.getCurrentSession();
		Transaction tran = session.beginTransaction();
		List<Category> categorysList = session.createQuery("from Category where categoryId=" + "'" + categoryId + "'").getResultList();
		
		return categorysList.get(0); //0 is the first row of an array
	}

	public void removeCategory(int categoryId) {
		// TODO Auto-generated method stub
		
	}

	public void deleteCategory(int categoryId) {
		Category c=getCategoryById(categoryId);
		sessionFactory.getCurrentSession().delete(c);
	}
	
}
