package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pizza.model.Cart;
import com.pizza.model.User;

@Repository
public class UserDAOImpl implements UserDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addUser(User user) 
	{
		Session session = sessionFactory.getCurrentSession(); //Session is used to save data in different tables.
	
		user.setUsername(user.getUsername());
		user.setPassword(user.getPassword());	
		user.setEnable(true);
		user.setRole("Customer");
		user.setUserId(user.getUserId());	
		session.saveOrUpdate(user); //Save User
		
		Cart cart = new Cart();

		cart.setUserId(user.getUserId());
		cart.setCartId(user.getUserId());		
		session.saveOrUpdate(cart);
				
		session.saveOrUpdate(user);	
	}

	public User getUserByName(String username) {
		List<User> userList = sessionFactory.getCurrentSession().createQuery("from User where username = "+"'"+username+"'").getResultList();
			return userList.get(0);
	}
	
}
