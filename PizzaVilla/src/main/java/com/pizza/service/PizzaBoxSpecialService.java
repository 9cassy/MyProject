package com.pizza.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.PizzaBoxSpecialDAOImpl;
import com.pizza.model.PizzaBoxSpecial;

@Service
@Transactional
public class PizzaBoxSpecialService {
	@Autowired
	PizzaBoxSpecialDAOImpl pizzaBoxSpecialDAOImpl;
	
	public void addPizzaBoxSpecial(PizzaBoxSpecial pizzaBoxSpecial) 
	{
		this.pizzaBoxSpecialDAOImpl.addPizzaBoxSpecial(pizzaBoxSpecial);
		
	}

}
