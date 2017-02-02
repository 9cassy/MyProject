package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.PizzaBoxSpecial;
@Repository
public class PizzaBoxSpecialDAOImpl implements PizzaBoxSpecialDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addPizzaBoxSpecial(PizzaBoxSpecial pizzaBoxSpecial) {
		//sessionFactory.getCurrentSession().saveOrUpdate(pizzaBoxSpecial);
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(pizzaBoxSpecial);
	}

	public void updatePizzaBoxSpecial(PizzaBoxSpecial pizzaBoxSpecial) {
		// TODO Auto-generated method stub
		
	}

	public List<PizzaBoxSpecial> listPizzaBoxSpecial() {
		// TODO Auto-generated method stub
		return null;
	}

	public PizzaBoxSpecial getPizzaBoxSpecialById(int pizzaBoxSpecialId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removePizzaBoxSpecial(int pizzaBoxSpecialId) {
		// TODO Auto-generated method stub
		
	}

}
