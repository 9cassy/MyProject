package com.pizza.dao;

import java.util.List;

import com.pizza.model.VegToppings;

public interface VegToppingsDAO 
{
	public void addVegToppings(VegToppings vegToppings);
	public void updateVegToppings(VegToppings vegToppings);
	public List<VegToppings> listVegToppings();
	public VegToppings getVegToppingsById(int vegToppingsId);
	public void removeVegToppings(int vegToppingsId);
}
