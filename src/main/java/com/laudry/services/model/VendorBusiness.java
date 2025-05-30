package com.laudry.services.model;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;

@Entity
public class VendorBusiness {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	    private String businessName;
	    
	    private String description;

	    private String addressLine1;
	    private String addressLine2;
	    private Integer city_id;
	    private Integer state_id;
	    private Integer country_id;

	   

	    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
	    @JoinColumn(name = "vendor_id")
	    private List<VendorService> vendorService = new ArrayList<>();
	   
	    // creates user_id FK in address table
	    private String contactNumber;
	    private String email;  
	    
	    public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getBusinessName() {
			return businessName;
		}

		public void setBusinessName(String businessName) {
			this.businessName = businessName;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
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

		public List<VendorService> getVendorService() {
			return vendorService;
		}

		public void setVendorService(List<VendorService> vendorService) {
			this.vendorService = vendorService;
		}

		public String getContactNumber() {
			return contactNumber;
		}

		public void setContactNumber(String contactNumber) {
			this.contactNumber = contactNumber;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getWorkingHours() {
			return workingHours;
		}

		public void setWorkingHours(String workingHours) {
			this.workingHours = workingHours;
		}

		private String workingHours;
	   
}
