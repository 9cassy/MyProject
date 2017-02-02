package com.pizza.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.VegToppingsDAOImpl;
import com.pizza.model.VegToppings;

@Service
@Transactional
public class VegToppingsService {
	@Autowired
	VegToppingsDAOImpl vegToppingsDAOImpl;
	
	public void addVegToppings(VegToppings vegToppings) 
	{
		this.vegToppingsDAOImpl.addVegToppings(vegToppings);
		
	}

}
