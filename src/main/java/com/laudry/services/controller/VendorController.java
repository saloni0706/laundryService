package com.laudry.services.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laudry.services.dto.VendorInfoDTO;
import com.laudry.services.model.VendorBusiness;

import com.laudry.services.service.VendorService;

@RestController
public class VendorController {

    @Autowired
    private VendorService vendorService;

    @PostMapping("/vendor")
    public VendorBusiness saveVendor(@RequestBody VendorBusiness vendor) {
        return vendorService.saveVendor(vendor);
    }
    
    @GetMapping("/vendorInfo")
    public List<VendorInfoDTO> getVendorInfo() {
        return vendorService.getVendorInfo();
    }
    
}
