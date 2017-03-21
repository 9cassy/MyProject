package com.pizza.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.TypeDAOImpl;
import com.pizza.model.Type;

@Service
@Transactional
public class TypeService {
	@Autowired
	TypeDAOImpl typeDAOImpl;
	
	public void addType(Type type) 
	{
		this.typeDAOImpl.addType(type);		
	}
	
	public List<Type> listType()
	{
		return this.typeDAOImpl.listType();
	}
	
	public Type getTypeByName(String typeName) {
		return typeDAOImpl.getTypeByName(typeName);
	}
	
	public Type getTypeById(int typeId) {
		return typeDAOImpl.getTypeById(typeId);
	}
}
