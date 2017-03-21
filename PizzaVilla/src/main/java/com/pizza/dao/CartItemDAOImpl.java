package com.pizza.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.pizza.model.CartItem;

public class CartItemDAOImpl implements CartItemDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addToCart(CartItem cartItem) {
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
	}
	
	public String getCartListByJSON(int cartId) {
		List<CartItem> cartList = sessionFactory.getCurrentSession().createQuery("from CartItem where cartId = " + "'" + cartId + "'").getResultList();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String listCartItem = gson.toJson(cartList);
		return listCartItem;
	}

	
}
