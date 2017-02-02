package com.pizza.dao;

import java.util.List;

import com.pizza.model.ConePizza;

public interface ConePizzaDAO 
{
	public void addConePizza(ConePizza conePizza);
	public void updateConePizza(ConePizza conePizza);
	public List<ConePizza> listConePizza();
	public ConePizza getConePizzaById(int conePizzaId);
	public void removeConePizza(int conePizzaId);
}
