package com.pizza.dao;

import java.util.List;

import com.pizza.model.Type;

public interface TypeDAO {
	public void addType(Type type);
	public void updateType(Type type);
	public List<Type> listType();
	public Type getTypeById(int typeId);
	public void removeType(int typeId);
	public Type getTypeByName(String typeName);
}
