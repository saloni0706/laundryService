package com.laudry.services.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laudry.services.model.User;
import com.laudry.services.repo.UserRepository;

@Service
public class UserService implements UserServiceImpl {
@Autowired
private UserRepository userRepository; // Assuming you have a UserRepository definedO
	@Override
	public User saveUser(User user) {
		User savedUser = userRepository.save(user); // Save the user to the database
		return savedUser; // Returning the user object for now
	}

	

}
