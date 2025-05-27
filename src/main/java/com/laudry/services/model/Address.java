package com.laudry.services.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Address {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
private Long id;
private String addressLine1;
private String addressLine2;
private Integer city_id;
private Integer state_id;
private Integer country_id;
@ManyToOne
private User user;
public Long getId() {
	return id;
}
public void setId(Long id) {
	this.id = id;
}
public String getAddressLine1() {
	return addressLine1;
}
public void setAddressLine1(String addressLine1) {
	this.addressLine1 = addressLine1;
}
public String getAddressLine2() {
	return addressLine2;
}
public void setAddressLine2(String addressLine2) {
	this.addressLine2 = addressLine2;
}
public Integer getCity_id() {
	return city_id;
}
public void setCity_id(Integer city_id) {
	this.city_id = city_id;
}
public Integer getState_id() {
	return state_id;
}
public void setState_id(Integer state_id) {
	this.state_id = state_id;
}
public Integer getCountry_id() {
	return country_id;
}
public void setCountry_id(Integer country_id) {
	this.country_id = country_id;
}
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}

}
