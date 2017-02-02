package com.pizza.dao;

import java.util.List;

import com.pizza.model.VegPizza;

public interface VegPizzaDAO 
{
	public void addVegPizza(VegPizza vegPizza);
	public void updateVegPizza(VegPizza vegPizza);
	public List<VegPizza> listVegPizza();
	public VegPizza getVegPizzaById(int vegPizzaId);
	public void removeVegPizza(int vegPizzaId);
}
