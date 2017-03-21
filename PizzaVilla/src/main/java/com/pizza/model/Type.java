package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Type 

{
		
	@ManyToOne
	@JoinColumn(name ="customizeId", insertable=false, updatable=false, nullable=false)
	private Customize customize;
	
	private int customizeId;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int typeId;
	private String typeName;
	private String typeDescription;
	
	public Customize getCustomize() {
		return customize;
	}
	public void setCustomize(Customize customize) {
		this.customize = customize;
	}
	public int getCustomizeId() {
		return customizeId;
	}
	public void setCustomizeId(int customizeId) {
		this.customizeId = customizeId;
	}
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public String getTypeDescription() {
		return typeDescription;
	}
	public void setTypeDescription(String typeDescription) {
		this.typeDescription = typeDescription;
	}
	
	
}
