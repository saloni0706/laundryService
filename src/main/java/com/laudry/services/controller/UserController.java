package com.laudry.services.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laudry.services.model.User;
import com.laudry.services.service.UserServiceImpl;

@RestController
public class UserController{
	@Autowired
	private UserServiceImpl userService;
public User saveUser(@RequestBody User user) {
	User savedUser= userService.saveUser(user); 
	return savedUser;
}
}
