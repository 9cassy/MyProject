package com.pizza.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Offers {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int offersId;
private String offersName;
private String offersDescription;

public int getOffersId() {
	return offersId;
}
public void setOffersId(int offersId) {
	this.offersId = offersId;
}
public String getOffersName() {
	return offersName;
}
public void setOffersName(String offersName) {
	this.offersName = offersName;
}
public String getOffersDescription() {
	return offersDescription;
}
public void setOffersDescription(String offersDescription) {
	this.offersDescription = offersDescription;
}


}
