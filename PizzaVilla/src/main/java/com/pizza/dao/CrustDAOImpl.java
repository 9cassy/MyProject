package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.pizza.dao.CrustDAO;
import com.pizza.model.Crust;

@Repository
public class CrustDAOImpl 
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addCrust(Crust crust) {
		sessionFactory.getCurrentSession().saveOrUpdate(crust);
		//Session session = this.sessionFactory.getCurrentSession();
		//session.persist(crust);
	}

	public void updateCrust(Crust crust) {
		// TODO Auto-generated method stub
		
	}

	public List<Crust> listCrust() {
		Session session=this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Crust> CrustList = session.createQuery("from Crust").getResultList();
		return CrustList;
	}

	public Crust getCrustById(int crustId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeCrust(int crustId) {
		// TODO Auto-generated method stub
		
	}

	public Crust getCrustByName(String crust) 
	{
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		List<Crust> crustsList = session.createQuery("from Crust where crustName=" + "'" + crust + "'").getResultList();
		tran.commit();
		session.close();
		return crustsList.get(0);
	}
	
	/*
	public Crust getCrustByName(String crustName) {
		Session session = sessionFactory.getCurrentSession();
		String string = "from Crust where crustName=" + "'" + crustName + "'";
		List<Crust> list = session.createQuery(string).getResultList();
		return list.get(0);
	}
	*/
}
