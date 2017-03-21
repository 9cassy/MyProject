package com.pizza.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.pizza.model.Category;
import com.pizza.model.Product;

@Repository
public class ProductDAOImpl {
	@Autowired
	private SessionFactory sessionFactory;

	public void addProduct(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		//Session session = this.sessionFactory.getCurrentSession();
		//session.persist(product);
	}

	public void updateProduct(Product product) {
		// TODO Auto-generated method stub
		
	}

	public List<Product> listProduct() {
		Session session=this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Product> ProductList = session.createQuery("from Product").getResultList();
		return ProductList;
	}

	
	//AngularJS
		public String listProductByJSON() {
			List<Product> productList = this.sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
			//Converting List to String
			Gson g=new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
			String productListJSON=g.toJson(productList);
			return productListJSON;
		}
	//End AngularJS
	
	public Product getProductById(int productId) //Product Can hold only one object
	{
		List<Product> productList = this.sessionFactory.getCurrentSession().createQuery("from Product where productId = " + productId ).getResultList();
		return productList.get(0);
	}

	public void removeProduct(int productId) {
		// TODO Auto-generated method stub
		
	}

	public Product getProductByName(String productName) {
		Session session = sessionFactory.getCurrentSession();
		String string = "from Product where productName=" + "'" + productName + "'";
		List<Product> list = session.createQuery(string).getResultList();
		return list.get(0);
	}

}
