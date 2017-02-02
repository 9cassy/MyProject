package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.NonVegPizza;
@Repository
public class NonVegPizzaDAOImpl implements NonVegPizzaDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addNonVegPizza(NonVegPizza nonVegPizza) {
		//sessionFactory.getCurrentSession().saveOrUpdate(nonVegPizza);
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(nonVegPizza);
	}

	public void updateNonVegPizza(NonVegPizza nonVegPizza) {
		// TODO Auto-generated method stub
		
	}

	public List<NonVegPizza> listNonVegPizza() {
		// TODO Auto-generated method stub
		return null;
	}

	public NonVegPizza getNonVegPizzaById(int nonVegPizzaId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeNonVegPizza(int nonVegPizzaId) {
		// TODO Auto-generated method stub
		
	}

}
