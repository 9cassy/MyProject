package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class NonVegPizza {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int NonVegPizzaId;
	private String NonVegPizzaName;
	private String NonVegPizzaDescription;
	public int getNonVegPizzaId() {
		return NonVegPizzaId;
	}
	public void setNonVegPizzaId(int nonVegPizzaId) {
		NonVegPizzaId = nonVegPizzaId;
	}
	public String getNonVegPizzaName() {
		return NonVegPizzaName;
	}
	public void setNonVegPizzaName(String nonVegPizzaName) {
		NonVegPizzaName = nonVegPizzaName;
	}
	public String getNonVegPizzaDescription() {
		return NonVegPizzaDescription;
	}
	public void setNonVegPizzaDescription(String nonVegPizzaDescription) {
		NonVegPizzaDescription = nonVegPizzaDescription;
	}


}
