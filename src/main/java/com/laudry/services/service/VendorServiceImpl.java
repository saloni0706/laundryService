package com.laudry.services.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laudry.services.dto.AddressDetail;
import com.laudry.services.dto.VendorInfoDTO;
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
	@Override
	public List<VendorInfoDTO> getVendorInfo() {
		// TODO Auto-generated method stub
		return vendorRepository.getVendorInfo();
	}
	@Override
	public AddressDetail getAddress(int postalCode) {
		// TODO Auto-generated method stub
		return vendorRepository.getAddress(postalCode);
	}
	

}
