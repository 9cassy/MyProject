package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.Type;

@Repository
public class TypeDAOImpl implements TypeDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addType(Type type) {
		sessionFactory.getCurrentSession().saveOrUpdate(type);
		//Session session = this.sessionFactory.getCurrentSession();
		//session.persist(type);
	}

	public void updateType(Type type) {
		// TODO Auto-generated method stub
		
	}

	public List<Type> listType() {
		Session session=this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Type> TypeList = session.createQuery("from Type").getResultList();
		return TypeList;
	}

	public Type getTypeById(int typeId) {
		Session session = sessionFactory.getCurrentSession();
		String string = "from Type where typeId=" + "'" + typeId + "'";
		List<Type> list = session.createQuery(string).getResultList();
		return list.get(0);
	}

	public void removeType(int typeId) {
		// TODO Auto-generated method stub
		
	}

	public Type getTypeByName(String typeName) {
		Session session = sessionFactory.getCurrentSession();
		String string = "from Type where typeName=" + "'" + typeName + "'";
		List<Type> list = session.createQuery(string).getResultList();
		return list.get(0);
	}

	
}
