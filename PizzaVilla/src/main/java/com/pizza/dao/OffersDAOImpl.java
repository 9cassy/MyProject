package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.Offers;
@Repository
public class OffersDAOImpl implements OffersDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addOffers(Offers offers) {
		//sessionFactory.getCurrentSession().saveOrUpdate(Offers);
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(offers);
	}

	public void updateOffers(Offers offers) {
		// TODO Auto-generated method stub
		
	}

	public List<Offers> listOffers() {
		// TODO Auto-generated method stub
		return null;
	}

	public Offers getOffersById(int OffersId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeOffers(int OffersId) {
		// TODO Auto-generated method stub
		
	}

}
