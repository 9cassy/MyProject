package com.pizza.dao;

import java.util.List;

import com.pizza.model.Drinks;

public interface DrinksDAO 
{
	public void addDrinks(Drinks drinks);
	public void updateDrinks(Drinks drinks);
	public List<Drinks> listDrinks();
	public Drinks getDrinksById(int drinksId);
	public void removeDrinks(int drinksId);
}
