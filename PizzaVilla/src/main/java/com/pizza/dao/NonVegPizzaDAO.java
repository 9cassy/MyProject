package com.pizza.dao;

import java.util.List;

import com.pizza.model.NonVegPizza;

public interface NonVegPizzaDAO 
{
	public void addNonVegPizza(NonVegPizza nonVegPizza);
	public void updateNonVegPizza(NonVegPizza nonVegPizza);
	public List<NonVegPizza> listNonVegPizza();
	public NonVegPizza getNonVegPizzaById(int nonVegPizzaId);
	public void removeNonVegPizza(int nonVegPizzaId);
}
