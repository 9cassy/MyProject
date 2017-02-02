package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PizzaBoxSpecial {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int pizzaBoxSpecialId;
	private String pizzaBoxSpecialName;
	private String pizzaBoxSpecialDescription;
	public int getPizzaBoxSpecialId() {
		return pizzaBoxSpecialId;
	}
	public void setPizzaBoxSpecialId(int pizzaBoxSpecialId) {
		this.pizzaBoxSpecialId = pizzaBoxSpecialId;
	}
	public String getPizzaBoxSpecialName() {
		return pizzaBoxSpecialName;
	}
	public void setPizzaBoxSpecialName(String pizzaBoxSpecialName) {
		this.pizzaBoxSpecialName = pizzaBoxSpecialName;
	}
	public String getPizzaBoxSpecialDescription() {
		return pizzaBoxSpecialDescription;
	}
	public void setPizzaBoxSpecialDescription(String pizzaBoxSpecialDescription) {
		this.pizzaBoxSpecialDescription = pizzaBoxSpecialDescription;
	}


}
