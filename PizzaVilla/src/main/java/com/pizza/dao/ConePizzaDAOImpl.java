package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.ConePizza;
@Repository
public class ConePizzaDAOImpl implements ConePizzaDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addConePizza(ConePizza conePizza) {
		//sessionFactory.getCurrentSession().saveOrUpdate(conePizza);
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(conePizza);
	}

	public void updateConePizza(ConePizza conePizza) {
		// TODO Auto-generated method stub
		
	}

	public List<ConePizza> listConePizza() {
		// TODO Auto-generated method stub
		return null;
	}

	public ConePizza getConePizzaById(int conePizzaId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeConePizza(int conePizzaId) {
		// TODO Auto-generated method stub
		
	}

}
