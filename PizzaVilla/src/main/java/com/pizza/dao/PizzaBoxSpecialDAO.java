package com.pizza.dao;

import java.util.List;

import com.pizza.model.PizzaBoxSpecial;

public interface PizzaBoxSpecialDAO 
{
	public void addPizzaBoxSpecial(PizzaBoxSpecial pizzaBoxSpecial);
	public void updatePizzaBoxSpecial(PizzaBoxSpecial pizzaBoxSpecial);
	public List<PizzaBoxSpecial> listPizzaBoxSpecial();
	public PizzaBoxSpecial getPizzaBoxSpecialById(int pizzaBoxSpecialId);
	public void removePizzaBoxSpecial(int pizzaBoxSpecialId);
}
