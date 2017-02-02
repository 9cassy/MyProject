package com.pizza.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.KidsSpecialDAOImpl;
import com.pizza.model.KidsSpecial;

@Service
@Transactional
public class KidsSpecialService {
	@Autowired
	KidsSpecialDAOImpl kidsSpecialDAOImpl;
	
	public void addKidsSpecial(KidsSpecial kidsSpecial) 
	{
		this.kidsSpecialDAOImpl.addKidsSpecial(kidsSpecial);
		
	}

}
