package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.Crust;
@Repository
public class CrustDAOImpl implements CrustDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addCrust(Crust crust) {
		//sessionFactory.getCurrentSession().saveOrUpdate(crust);
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(crust);
	}

	public void updateCrust(Crust crust) {
		// TODO Auto-generated method stub
		
	}

	public List<Crust> listCrust() {
		// TODO Auto-generated method stub
		return null;
	}

	public Crust getCrustById(int crustId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeCrust(int crustId) {
		// TODO Auto-generated method stub
		
	}

}
