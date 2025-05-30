package com.laudry.services.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laudry.services.model.VendorBusiness;

public interface VendorRepository extends JpaRepository<VendorBusiness, Long> {

}
