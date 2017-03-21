package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Crust 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int crustId;
	private String crustName;
	private String crustDescription;

	public int getCrustId() {
		return crustId;
	}
	public void setCrustId(int crustId) {
		this.crustId = crustId;
	}
	public String getCrustName() {
		return crustName;
	}
	public void setCrustName(String crustName) {
		this.crustName = crustName;
	}
	public String getCrustDescription() {
		return crustDescription;
	}
	public void setCrustDescription(String crustDescription) {
		this.crustDescription = crustDescription;
	}



}
