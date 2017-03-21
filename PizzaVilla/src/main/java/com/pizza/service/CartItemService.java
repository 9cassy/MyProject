package com.pizza.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.CartItemDAOImpl;
import com.pizza.model.CartItem;

@Service
@Transactional
public class CartItemService 
{
@Autowired
private CartItemDAOImpl cartItemDAOImpl; 
	
	public void addToCart(CartItem cartItem) {
		cartItemDAOImpl.addToCart(cartItem);
	}

}
