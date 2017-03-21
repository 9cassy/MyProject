package com.pizza.dao;

import java.util.List;

import com.pizza.model.Product;

public interface ProductDAO {
	public void addProduct(Product product);
	public void updateProduct(Product product);
	public List<Product> listProduct();
	public String listProductByJSON(); //For AngularJS
	public Product getProductById(int productId);
	public void removeProduct(int productId);
	public Product getProductByName(String productName);
}
