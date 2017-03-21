package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.pizza.dao.ToppingsDAO;
import com.pizza.model.Toppings;

@Repository
public class ToppingsDAOImpl 
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addToppings(Toppings toppings) {
		sessionFactory.getCurrentSession().saveOrUpdate(toppings);
		//Session session = this.sessionFactory.getCurrentSession();
		//session.persist(toppings);
	}

	public void updateToppings(Toppings toppings) {
		// TODO Auto-generated method stub
		
	}

	public List<Toppings> listToppings() {
		Session session=this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Toppings> ToppingsList = session.createQuery("from Toppings").getResultList();
		return ToppingsList;
	}

	public Toppings getToppingsById(int toppingsId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeToppings(int toppingsId) {
		// TODO Auto-generated method stub
		
	}

	public Toppings getToppingsByName(String toppings) 
	{
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		List<Toppings> toppingssList = session.createQuery("from Toppings where toppingsName=" + "'" + toppings + "'").getResultList();
		tran.commit();
		session.close();
		return toppingssList.get(0);
	}
	
	/*
	public Toppings getToppingsByName(String toppingsName) {
		Session session = sessionFactory.getCurrentSession();
		String string = "from Toppings where toppingsName=" + "'" + toppingsName + "'";
		List<Toppings> list = session.createQuery(string).getResultList();
		return list.get(0);
	}
	*/
}
