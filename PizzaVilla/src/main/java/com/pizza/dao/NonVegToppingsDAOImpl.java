package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.NonVegToppings;
@Repository
public class NonVegToppingsDAOImpl implements NonVegToppingsDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addNonVegToppings(NonVegToppings nonVegToppings) {
		//sessionFactory.getCurrentSession().saveOrUpdate(nonVegToppings);
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(nonVegToppings);
	}

	public void updateNonVegToppings(NonVegToppings nonVegToppings) {
		// TODO Auto-generated method stub
		
	}

	public List<NonVegToppings> listNonVegToppings() {
		// TODO Auto-generated method stub
		return null;
	}

	public NonVegToppings getNonVegToppingsById(int nonVegToppingsId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeNonVegToppings(int nonVegToppingsId) {
		// TODO Auto-generated method stub
		
	}

}
