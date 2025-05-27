package com.laudry.services.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laudry.services.model.User;

public interface UserRepository extends JpaRepository<User, Long> {

	// Here you can define custom query methods if needed
	// For example, findByUsername, findByEmail, etc.

}
