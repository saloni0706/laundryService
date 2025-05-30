package com.laudry.services.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laudry.services.model.User;
import com.laudry.services.model.VendorBusiness;
import com.laudry.services.repo.VendorRepository;

@Service
public class VendorServiceImpl implements VendorService {

	
@Autowired
private VendorRepository vendorRepository;
	@Override
	public VendorBusiness saveVendor(VendorBusiness vendor) {
		VendorBusiness savedVendor= vendorRepository.save(vendor); 
		return savedVendor;
	}

}
