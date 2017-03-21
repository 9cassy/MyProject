package com.pizza.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.CrustDAOImpl;
import com.pizza.model.Crust;

@Service
@Transactional
public class CrustService {
	@Autowired
	CrustDAOImpl crustDAOImpl;
	
	public void addCrust(Crust crust) 
	{
		this.crustDAOImpl.addCrust(crust);		
	}
	
	public List<Crust> listCrust()
	{
		return this.crustDAOImpl.listCrust();
	}
	
	public Crust getCrustByName(String crustName) {
		return crustDAOImpl.getCrustByName(crustName);
	}
	
}
