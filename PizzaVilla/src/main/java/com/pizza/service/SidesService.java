package com.pizza.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.SidesDAOImpl;
import com.pizza.model.Sides;

@Service
@Transactional
public class SidesService {
	@Autowired
	SidesDAOImpl sidesDAOImpl;
	
	public void addSides(Sides sides) 
	{
		this.sidesDAOImpl.addSides(sides);
		
	}

}
