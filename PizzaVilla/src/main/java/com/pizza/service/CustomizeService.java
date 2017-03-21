package com.pizza.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.CustomizeDAOImpl;
import com.pizza.model.Customize;

@Service
@Transactional
public class CustomizeService 
{
	@Autowired
	CustomizeDAOImpl customizeDAOImpl;
	
	public void addCustomize(Customize customize) 
	{
		this.customizeDAOImpl.addCustomize(customize);		
	}
	
	public List<Customize> listCustomize()
	{
		return this.customizeDAOImpl.listCustomize();
	}
	
	public Customize getCustomizeByName(String customizeName) {
		return customizeDAOImpl.getCustomizeByName(customizeName);
	}
	
	public Customize getCustomizeById(int customizeId) {
		return customizeDAOImpl.getCustomizeById(customizeId);
	}
	
	public void deleteCustomize(int customizeId){
		this.customizeDAOImpl.deleteCustomize(customizeId);	
	}
}
