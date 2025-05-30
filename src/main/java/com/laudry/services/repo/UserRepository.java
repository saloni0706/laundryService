package com.laudry.services.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.laudry.services.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
	Optional<User> findByEmail(@Param("email") String email);
	
}
