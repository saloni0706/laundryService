package com.laudry.services.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laudry.services.config.JwtUtil;
import com.laudry.services.dto.AuthRequest;
import com.laudry.services.dto.AuthResponse;
import com.laudry.services.model.User;
import com.laudry.services.service.UserServiceImpl;

@RestController
public class UserController{
	@Autowired
	private AuthenticationManager authManager;

	@Autowired
	private JwtUtil jwtUtil;
	@Autowired
	private UserServiceImpl userService;
	@PostMapping("/users")
public User saveUser(@RequestBody User user) {
	User savedUser= userService.saveUser(user); 
	return savedUser;
}
	
	@PostMapping("/login")
	public ResponseEntity<?> login(@RequestBody AuthRequest request) {
		authManager.authenticate(new UsernamePasswordAuthenticationToken(request.getUsername(), request.getPassword()));

		String token = jwtUtil.generateToken(request.getUsername());
		return ResponseEntity.ok(new AuthResponse(token));
	}
}
