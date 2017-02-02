package com.pizza.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.NonVegToppingsDAOImpl;
import com.pizza.model.NonVegToppings;

@Service
@Transactional
public class NonVegToppingsService {
	@Autowired
	NonVegToppingsDAOImpl nonVegToppingsDAOImpl;
	
	public void addNonVegToppings(NonVegToppings nonVegToppings) 
	{
		this.nonVegToppingsDAOImpl.addNonVegToppings(nonVegToppings);
		
	}

}
