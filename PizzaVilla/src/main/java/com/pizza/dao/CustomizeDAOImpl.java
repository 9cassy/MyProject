package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.pizza.dao.CustomizeDAO;
import com.pizza.model.Customize;

@Repository
public class CustomizeDAOImpl implements CustomizeDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addCustomize(Customize customize) {
		sessionFactory.getCurrentSession().saveOrUpdate(customize);
		//Session session = this.sessionFactory.getCurrentSession();
		//session.persist(customize);
	}

	public void updateCustomize(Customize customize) {
		
	}

	public List<Customize> listCustomize() {
		Session session=this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Customize> CustomizeList = session.createQuery("from Customize").getResultList();
		return CustomizeList;
	}


	public Customize getCustomizeByName(String customize) 
	{
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		List<Customize> customizesList = session.createQuery("from Customize where customizeName=" + "'" + customize + "'").getResultList();
		tran.commit();
		session.close();
		return customizesList.get(0);
	}

	

	public Customize getCustomizeById(int customizeId) {
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		List<Customize> customizesList = session.createQuery("from Customize where customizeId=" + "'" + customizeId + "'").getResultList();
		
		return customizesList.get(0); //0 is the first row of array
	}

	public void removeCustomize(int customizeId) {
		// TODO Auto-generated method stub
		
	}

	public void deleteCustomize(int customizeId) {
		Customize c=getCustomizeById(customizeId);
		sessionFactory.getCurrentSession().delete(c);
	}
	
	/*
	public Customize getCustomizeByName(String customizeName) {
		Session session = sessionFactory.getCurrentSession();
		String string = "from Customize where customizeName=" + "'" + customizeName + "'";
		List<Customize> list = session.createQuery(string).getResultList();
		return list.get(0);
	}
	*/
}
