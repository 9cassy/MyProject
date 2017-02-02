package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ConePizza {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int conePizzaId;
	private String conePizzaName;
	private String conePizzaDescription;
	
	public int getConePizzaId() {
		return conePizzaId;
	}
	public void setConePizzaId(int conePizzaId) {
		this.conePizzaId = conePizzaId;
	}
	public String getConePizzaName() {
		return conePizzaName;
	}
	public void setConePizzaName(String conePizzaName) {
		this.conePizzaName = conePizzaName;
	}
	public String getConePizzaDescription() {
		return conePizzaDescription;
	}
	public void setConePizzaDescription(String conePizzaDescription) {
		this.conePizzaDescription = conePizzaDescription;
	}


}
