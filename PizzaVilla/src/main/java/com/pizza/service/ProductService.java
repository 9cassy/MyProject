package com.pizza.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pizza.dao.ProductDAOImpl;
import com.pizza.model.Product;

@Service
@Transactional
public class ProductService {
	@Autowired
	ProductDAOImpl productDAOImpl;
	
	public void addProduct(Product product) 
	{
		this.productDAOImpl.addProduct(product);		
	}
	
	public List<Product> listProduct()
	{
		return this.productDAOImpl.listProduct();
	}
	
	public String listProductByJSON()
	{
		return this.productDAOImpl.listProductByJSON();
	}
	
	public Product getProductByName(String productName) {
		return productDAOImpl.getProductByName(productName);
	}
	
	public Product getProductById(int productId) {
		return productDAOImpl.getProductById(productId);
	}
	
}
