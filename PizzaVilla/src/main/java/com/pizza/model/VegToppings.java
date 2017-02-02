package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class VegToppings {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int VegToppingsId;
	private String VegToppingsName;
	private String VegToppingsDescription;
	public int getVegToppingsId() {
		return VegToppingsId;
	}
	public void setVegToppingsId(int vegToppingsId) {
		VegToppingsId = vegToppingsId;
	}
	public String getVegToppingsName() {
		return VegToppingsName;
	}
	public void setVegToppingsName(String vegToppingsName) {
		VegToppingsName = vegToppingsName;
	}
	public String getVegToppingsDescription() {
		return VegToppingsDescription;
	}
	public void setVegToppingsDescription(String vegToppingsDescription) {
		VegToppingsDescription = vegToppingsDescription;
	}


}
