package com.pizza.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.ConePizzaDAOImpl;
import com.pizza.model.ConePizza;

@Service
@Transactional
public class ConePizzaService {
	@Autowired
	ConePizzaDAOImpl conePizzaDAOImpl;
	
	public void addConePizza(ConePizza conePizza) 
	{
		this.conePizzaDAOImpl.addConePizza(conePizza);
		
	}

}
