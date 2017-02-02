package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.Sides;
@Repository
public class SidesDAOImpl implements SidesDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addSides(Sides sides) {
		//sessionFactory.getCurrentSession().saveOrUpdate(sides);
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(sides);
	}

	public void updateSides(Sides sides) {
		// TODO Auto-generated method stub
		
	}

	public List<Sides> listSides() {
		// TODO Auto-generated method stub
		return null;
	}

	public Sides getSidesById(int sidesId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeSides(int sidesId) {
		// TODO Auto-generated method stub
		
	}

}
