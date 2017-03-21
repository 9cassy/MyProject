package com.pizza.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.ToppingsDAOImpl;
import com.pizza.model.Toppings;

@Service
@Transactional
public class ToppingsService {
	@Autowired
	ToppingsDAOImpl toppingsDAOImpl;
	
	public void addToppings(Toppings toppings) 
	{
		this.toppingsDAOImpl.addToppings(toppings);		
	}
	
	public List<Toppings> listToppings()
	{
		return this.toppingsDAOImpl.listToppings();
	}
	
	public Toppings getToppingsByName(String toppingsName) {
		return toppingsDAOImpl.getToppingsByName(toppingsName);
	}
	
}
