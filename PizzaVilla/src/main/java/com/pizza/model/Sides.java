package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Sides {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int sidesId;
	private String sidesName;
	private String sidesDescription;
	
	public int getSidesId() {
		return sidesId;
	}
	public void setSidesId(int sidesId) {
		this.sidesId = sidesId;
	}
	public String getSidesName() {
		return sidesName;
	}
	public void setSidesName(String sidesName) {
		this.sidesName = sidesName;
	}
	public String getSidesDescription() {
		return sidesDescription;
	}
	public void setSidesDescription(String sidesDescription) {
		this.sidesDescription = sidesDescription;
	}


}
