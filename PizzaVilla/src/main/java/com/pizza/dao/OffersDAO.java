package com.pizza.dao;

import java.util.List;

import com.pizza.model.Offers;

public interface OffersDAO 
{
	public void addOffers(Offers offers);
	public void updateOffers(Offers offers);
	public List<Offers> listOffers();
	public Offers getOffersById(int offersId);
	public void removeOffers(int offersId);
}
