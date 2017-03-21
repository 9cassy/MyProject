package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Customize 
{
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int customizeId;
private String customizeName;
private String customizeDescription;

public int getCustomizeId() {
	return customizeId;
}
public void setCustomizeId(int customizeId) {
	this.customizeId = customizeId;
}
public String getCustomizeName() {
	return customizeName;
}
public void setCustomizeName(String customizeName) {
	this.customizeName = customizeName;
}
public String getCustomizeDescription() {
	return customizeDescription;
}
public void setCustomizeDescription(String customizeDescription) {
	this.customizeDescription = customizeDescription;
}



}
