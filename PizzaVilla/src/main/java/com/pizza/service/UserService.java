package com.pizza.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.UserDAOImpl;
import com.pizza.model.User;

@Service
@Transactional
public class UserService 
{
	@Autowired
	UserDAOImpl userDAOImpl;
	
	public void addUser(User user) 
	{
		this.userDAOImpl.addUser(user);
	}
	
	public User getUserByName(String username)
	{
		return userDAOImpl.getUserByName(username);
	}
	
}
