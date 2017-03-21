package com.pizza.dao;

import com.pizza.model.User;

public interface UserDAO 
{
	public void addUser(User user);
	public User getUserByName(String username);
}
