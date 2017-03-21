package com.pizza.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.ItemDAOImpl;
import com.pizza.model.Item;

@Service
@Transactional
public class ItemService {
	@Autowired
	ItemDAOImpl itemDAOImpl;
	
	public void addItem(Item item) 
	{
		this.itemDAOImpl.addItem(item);		
	}
	
	public List<Item> listItem()
	{
		return this.itemDAOImpl.listItem();
	}
	
	public Item getItemByName(String itemName) {
		return itemDAOImpl.getItemByName(itemName);
	}
	
}
