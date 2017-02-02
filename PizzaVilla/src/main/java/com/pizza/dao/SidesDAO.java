package com.pizza.dao;

import java.util.List;

import com.pizza.model.Sides;

public interface SidesDAO 
{
	public void addSides(Sides sides);
	public void updateSides(Sides sides);
	public List<Sides> listSides();
	public Sides getSidesById(int sidesId);
	public void removeSides(int sidesId);
}
