package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class VegPizza {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int vegPizzaId;
	private String vegPizzaName;
	private String vegPizzaDescription;
	public int getVegPizzaId() {
		return vegPizzaId;
	}
	public void setVegPizzaId(int vegPizzaId) {
		this.vegPizzaId = vegPizzaId;
	}
	public String getVegPizzaName() {
		return vegPizzaName;
	}
	public void setVegPizzaName(String vegPizzaName) {
		this.vegPizzaName = vegPizzaName;
	}
	public String getVegPizzaDescription() {
		return vegPizzaDescription;
	}
	public void setVegPizzaDescription(String vegPizzaDescription) {
		this.vegPizzaDescription = vegPizzaDescription;
	}


}
