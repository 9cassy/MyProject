package com.pizza.dao;

import java.util.List;

import com.pizza.model.NonVegToppings;

public interface NonVegToppingsDAO 
{
	public void addNonVegToppings(NonVegToppings nonVegToppings);
	public void updateNonVegToppings(NonVegToppings nonVegToppings);
	public List<NonVegToppings> listNonVegToppings();
	public NonVegToppings getNonVegToppingsById(int nonVegToppingsId);
	public void removeNonVegToppings(int nonVegToppingsId);
}
