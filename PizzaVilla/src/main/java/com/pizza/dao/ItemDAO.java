package com.pizza.dao;

import java.util.List;

import com.pizza.model.Item;

public interface ItemDAO {
	public void addItem(Item item);
	public void updateItem(Item item);
	public List<Item> listItem();
	public Item getItemById(int itemId);
	public void removeItem(int itemId);
	public Item getItemByName(String itemName);
}
