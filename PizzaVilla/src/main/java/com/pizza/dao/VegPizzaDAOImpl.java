package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.VegPizza;
@Repository
public class VegPizzaDAOImpl implements VegPizzaDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addVegPizza(VegPizza vegPizza) {
		//sessionFactory.getCurrentSession().saveOrUpdate(vegPizza);
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(vegPizza);
	}

	public void updateVegPizza(VegPizza vegPizza) {
		// TODO Auto-generated method stub
		
	}

	public List<VegPizza> listVegPizza() {
		// TODO Auto-generated method stub
		return null;
	}

	public VegPizza getVegPizzaById(int vegPizzaId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeVegPizza(int vegPizzaId) {
		// TODO Auto-generated method stub
		
	}

}
