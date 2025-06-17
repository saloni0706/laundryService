package com.laudry.services.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.laudry.services.dto.AddressDetail;
import com.laudry.services.dto.VendorInfoDTO;
import com.laudry.services.model.VendorBusiness;


public interface VendorRepository extends JpaRepository<VendorBusiness, Long> {
	@Query(value = "SELECT u.username AS username, s.service_name AS serviceName FROM app_user u " +
            "JOIN vendor_business v ON v.user_id = u.id " +
            "JOIN vendor_service vs ON vs.vendor_id = v.id " +
            "JOIN services s ON s.service_id = vs.service_id", nativeQuery = true)
List<VendorInfoDTO> getVendorInfo();

	@Query(value = "SELECT cont.name AS countryName, st.name AS stateName, c.city AS cityName " +
            "FROM postal_code pc " +
            "JOIN cities c ON pc.city_id = c.city_id " +
            "JOIN states st ON c.state_id = st.state_id " +
            "JOIN countries cont ON st.country_id = cont.country_id " +
            "WHERE pc.postal_code = :postalCode", nativeQuery = true)
AddressDetail getAddress(@Param("postalCode") int postalCode);

}
