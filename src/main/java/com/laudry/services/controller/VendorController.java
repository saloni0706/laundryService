package com.laudry.services.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laudry.services.model.User;
import com.laudry.services.model.VendorBusiness;
import com.laudry.services.service.VendorService;
@RestController
public class VendorController {
	@Autowired
	private VendorService vendorService;
	@PostMapping("/vendor")
public VendorBusiness saveUser(@RequestBody VendorBusiness vendor) {
	VendorBusiness savedVendor= vendorService.saveVendor(vendor); 
	return savedVendor;
}
}
