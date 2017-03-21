package com.pizza.dao;

import java.util.List;

import com.pizza.model.Toppings;

public interface ToppingsDAO 
{
	public void addToppings(Toppings toppings);
	public void updateToppings(Toppings toppings);
	public List<Toppings> listToppings();
	public Toppings getToppingsById(int toppingsId);
	public void removeToppings(int toppingsId);
	public Toppings getToppingsByName(String toppingsName);
}
