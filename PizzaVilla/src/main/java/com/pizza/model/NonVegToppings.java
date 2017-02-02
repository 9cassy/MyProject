package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class NonVegToppings {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int nonVegToppingsId;
	private String nonVegToppingsName;
	private String nonVegToppingsDescription;
	public int getNonVegToppingsId() {
		return nonVegToppingsId;
	}
	public void setNonVegToppingsId(int nonVegToppingsId) {
		this.nonVegToppingsId = nonVegToppingsId;
	}
	public String getNonVegToppingsName() {
		return nonVegToppingsName;
	}
	public void setNonVegToppingsName(String nonVegToppingsName) {
		this.nonVegToppingsName = nonVegToppingsName;
	}
	public String getNonVegToppingsDescription() {
		return nonVegToppingsDescription;
	}
	public void setNonVegToppingsDescription(String nonVegToppingsDescription) {
		this.nonVegToppingsDescription = nonVegToppingsDescription;
	}


}
