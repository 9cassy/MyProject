package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Toppings 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int toppingsId;
	private String toppingsName;
	private String toppingsDescription;
	public int getToppingsId() {
		return toppingsId;
	}
	public void setToppingsId(int toppingsId) {
		this.toppingsId = toppingsId;
	}
	public String getToppingsName() {
		return toppingsName;
	}
	public void setToppingsName(String toppingsName) {
		this.toppingsName = toppingsName;
	}
	public String getToppingsDescription() {
		return toppingsDescription;
	}
	public void setToppingsDescription(String toppingsDescription) {
		this.toppingsDescription = toppingsDescription;
	}

	


}
