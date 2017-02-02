package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class KidsSpecial {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int kidsSpecialId;
	private String kidsSpecialName;
	private String kidsSpecialDescription;
	public int getKidsSpecialId() {
		return kidsSpecialId;
	}
	public void setKidsSpecialId(int kidsSpecialId) {
		this.kidsSpecialId = kidsSpecialId;
	}
	public String getKidsSpecialName() {
		return kidsSpecialName;
	}
	public void setKidsSpecialName(String kidsSpecialName) {
		this.kidsSpecialName = kidsSpecialName;
	}
	public String getKidsSpecialDescription() {
		return kidsSpecialDescription;
	}
	public void setKidsSpecialDescription(String kidsSpecialDescription) {
		this.kidsSpecialDescription = kidsSpecialDescription;
	}


}
