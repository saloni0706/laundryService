package com.laudry.services.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity

public class VendorService {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
 private Long id;
 private Integer serviceId;
 private Integer serviceItemId;
 private Double price;
public Long getId() {
	return id;
}
public void setId(Long id) {
	this.id = id;
}
public Integer getServiceId() {
	return serviceId;
}
public void setServiceId(Integer serviceId) {
	this.serviceId = serviceId;
}
public Integer getServiceItemId() {
	return serviceItemId;
}
public void setServiceItemId(Integer serviceItemId) {
	this.serviceItemId = serviceItemId;
}
public Double getPrice() {
	return price;
}
public void setPrice(Double price) {
	this.price = price;
}
 
}
