package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.Item;

@Repository
public class ItemDAOImpl {
	@Autowired
	private SessionFactory sessionFactory;

	public void addItem(Item item) {
		sessionFactory.getCurrentSession().saveOrUpdate(item);
		//Session session = this.sessionFactory.getCurrentSession();
		//session.persist(item);
	}

	public void updateItem(Item item) {
		// TODO Auto-generated method stub
		
	}

	public List<Item> listItem() {
		Session session=this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Item> ItemList = session.createQuery("from Item").getResultList();
		return ItemList;
	}

	public Item getItemById(int itemId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeItem(int itemId) {
		// TODO Auto-generated method stub
		
	}

	public Item getItemByName(String itemName) {
		Session session = sessionFactory.getCurrentSession();
		String string = "from Item where itemName=" + "'" + itemName + "'";
		List<Item> list = session.createQuery(string).getResultList();
		return list.get(0);
	}

}
