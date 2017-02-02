package com.pizza.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.VegPizzaDAOImpl;
import com.pizza.model.VegPizza;

@Service
@Transactional
public class VegPizzaService {
	@Autowired
	VegPizzaDAOImpl vegPizzaDAOImpl;
	
	public void addVegPizza(VegPizza vegPizza) 
	{
		this.vegPizzaDAOImpl.addVegPizza(vegPizza);
		
	}

}
