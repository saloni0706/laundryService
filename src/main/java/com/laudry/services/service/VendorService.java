package com.laudry.services.service;

import java.util.List;

import com.laudry.services.dto.AddressDetail;
import com.laudry.services.dto.VendorInfoDTO;
import com.laudry.services.model.VendorBusiness;


public interface VendorService {

	VendorBusiness saveVendor(VendorBusiness vendorService);
	List<VendorInfoDTO> getVendorInfo();
	AddressDetail getAddress(int postalCode);

}
