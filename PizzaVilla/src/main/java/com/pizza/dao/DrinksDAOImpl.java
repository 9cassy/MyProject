package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.Category;
import com.pizza.model.Drinks;
@Repository
public class DrinksDAOImpl implements DrinksDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addDrinks(Drinks drinks) {
		//sessionFactory.getCurrentSession().saveOrUpdate(drinks);
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(drinks);
	}

	public void updateDrinks(Drinks drinks) {
		// TODO Auto-generated method stub
		
	}

	public List<Drinks> listDrinks() {
		Session session=this.sessionFactory.getCurrentSession();
		List<Drinks> DrinksList = session.createQuery("drinks").getResultList();
		return DrinksList;
	}

	public Drinks getDrinksById(int drinksId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeDrinks(int drinksId) {
		// TODO Auto-generated method stub
		
	}

}
