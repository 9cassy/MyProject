package com.pizza.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.OffersDAOImpl;
import com.pizza.model.Offers;

@Service
@Transactional
public class OffersService {
	@Autowired
	OffersDAOImpl offersDAOImpl;
	
	public void addOffers(Offers offers) 
	{
		this.offersDAOImpl.addOffers(offers);
		
	}

}
