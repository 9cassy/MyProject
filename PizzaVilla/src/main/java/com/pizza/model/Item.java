package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Item {

	
	@ManyToOne
	@JoinColumn(name ="typeId", insertable=false, updatable=false, nullable=false)
	private Type type;
	private int typeId;
	
	@ManyToOne
	@JoinColumn(name ="crustId", insertable=false, updatable=false, nullable=false)
	private Crust crust;
	private int crustId;
	
	@ManyToOne
	@JoinColumn(name ="toppingsId", insertable=false, updatable=false, nullable=false)
	private Toppings toppings;
	private int toppingsId;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int itemId;
	private String itemName;
	private String itemDescription;
	
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public Crust getCrust() {
		return crust;
	}
	public void setCrust(Crust crust) {
		this.crust = crust;
	}
	public int getCrustId() {
		return crustId;
	}
	public void setCrustId(int crustId) {
		this.crustId = crustId;
	}
	public Toppings getToppings() {
		return toppings;
	}
	public void setToppings(Toppings toppings) {
		this.toppings = toppings;
	}
	public int getToppingsId() {
		return toppingsId;
	}
	public void setToppingsId(int toppingsId) {
		this.toppingsId = toppingsId;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemDescription() {
		return itemDescription;
	}
	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}
	
	
}
