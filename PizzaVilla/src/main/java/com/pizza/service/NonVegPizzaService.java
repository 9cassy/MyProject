package com.pizza.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.NonVegPizzaDAOImpl;
import com.pizza.model.NonVegPizza;

@Service
@Transactional
public class NonVegPizzaService {
	@Autowired
	NonVegPizzaDAOImpl nonVegPizzaDAOImpl;
	
	public void addNonVegPizza(NonVegPizza nonVegPizza) 
	{
		this.nonVegPizzaDAOImpl.addNonVegPizza(nonVegPizza);
		
	}

}
