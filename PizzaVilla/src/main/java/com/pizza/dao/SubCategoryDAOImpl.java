package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.SubCategory;

@Repository
public class SubCategoryDAOImpl implements SubCategoryDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addSubCategory(SubCategory subCategory) {
		sessionFactory.getCurrentSession().saveOrUpdate(subCategory);
		//Session session = this.sessionFactory.getCurrentSession();
		//session.persist(subCategory);
	}

	public void updateSubCategory(SubCategory subCategory) {
		// TODO Auto-generated method stub
		
	}

	public List<SubCategory> listSubCategory() {
		Session session=this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<SubCategory> SubCategoryList = session.createQuery("from SubCategory").getResultList();
		return SubCategoryList;
	}

	public SubCategory getSubCategoryById(int subCategoryId) {
		Session session = sessionFactory.getCurrentSession();
		String string = "from SubCategory where subCategoryId=" + "'" + subCategoryId + "'";
		List<SubCategory> list = session.createQuery(string).getResultList();
		return list.get(0);
	}

	public void removeSubCategory(int subCategoryId) {
		// TODO Auto-generated method stub
		
	}

	public SubCategory getSubCategoryByName(String subCategoryName) {
		Session session = sessionFactory.getCurrentSession();
		String string = "from SubCategory where subCategoryName=" + "'" + subCategoryName + "'";
		List<SubCategory> list = session.createQuery(string).getResultList();
		return list.get(0);
	}

	
}
