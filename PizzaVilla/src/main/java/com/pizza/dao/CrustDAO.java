package com.pizza.dao;

import java.util.List;

import com.pizza.model.Crust;

public interface CrustDAO 
{
	public void addCrust(Crust crust);
	public void updateCrust(Crust crust);
	public List<Crust> listCrust();
	public Crust getCrustById(int crustId);
	public void removeCrust(int crustId);
	public Crust getCrustByName(String crustName);
}
