package com.pizza.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.DrinksDAOImpl;
import com.pizza.model.Category;
import com.pizza.model.Drinks;

@Service
@Transactional
public class DrinksService {
	@Autowired
	DrinksDAOImpl drinksDAOImpl;
	
	public void addDrinks(Drinks drinks) 
	{
		this.drinksDAOImpl.addDrinks(drinks);		
	}

	public List<Drinks> listDrinks()
	{
		return this.drinksDAOImpl.listDrinks();
	}
	
}
