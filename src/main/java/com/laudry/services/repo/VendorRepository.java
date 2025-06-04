package com.laudry.services.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.laudry.services.dto.VendorInfoDTO;
import com.laudry.services.model.VendorBusiness;


public interface VendorRepository extends JpaRepository<VendorBusiness, Long> {
	@Query(value = "SELECT u.username AS username, s.service_name AS serviceName FROM app_user u " +
            "JOIN vendor_business v ON v.user_id = u.id " +
            "JOIN vendor_service vs ON vs.vendor_id = v.id " +
            "JOIN services s ON s.service_id = vs.service_id", nativeQuery = true)
List<VendorInfoDTO> getVendorInfo();

	

}
