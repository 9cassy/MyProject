package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.VegToppings;
@Repository
public class VegToppingsDAOImpl implements VegToppingsDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addVegToppings(VegToppings vegToppings) {
		//sessionFactory.getCurrentSession().saveOrUpdate(vegToppings);
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(vegToppings);
	}

	public void updateVegToppings(VegToppings vegToppings) {
		// TODO Auto-generated method stub
		
	}

	public List<VegToppings> listVegToppings() {
		// TODO Auto-generated method stub
		return null;
	}

	public VegToppings getVegToppingsById(int vegToppingsId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeVegToppings(int vegToppingsId) {
		// TODO Auto-generated method stub
		
	}

}
