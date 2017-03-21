package com.pizza.dao;

import java.util.List;

import com.pizza.model.Customize;

public interface CustomizeDAO 
{
	public void addCustomize(Customize customize);
	public void updateCustomize(Customize customize);
	public List<Customize> listCustomize();
	public Customize getCustomizeById(int customizeId); //For Edit & Delete
	public void removeCustomize(int customizeId);
	public Customize getCustomizeByName(String customizeName);
	public void deleteCustomize(int customizeId);
}
