package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
		// TODO Auto-generated method stub
		
	}

	public List<Category> listCategory() {
		Session session=this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Category> CategoryList = session.createQuery("from Category").getResultList();
		return CategoryList;
	}

	public Category getCategoryById(int categoryId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeCategory(int categoryId) {
		// TODO Auto-generated method stub
		
	}

}
