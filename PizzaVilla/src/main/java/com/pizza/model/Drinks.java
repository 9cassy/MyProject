package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Drinks {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int drinksId;
	private String drinksName;
	private String drinksDescription;
	public int getDrinksId() {
		return drinksId;
	}
	public void setDrinksId(int drinksId) {
		this.drinksId = drinksId;
	}
	public String getDrinksName() {
		return drinksName;
	}
	public void setDrinksName(String drinksName) {
		this.drinksName = drinksName;
	}
	public String getDrinksDescription() {
		return drinksDescription;
	}
	public void setDrinksDescription(String drinksDescription) {
		this.drinksDescription = drinksDescription;
	}


}
