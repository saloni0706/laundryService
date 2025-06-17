package com.laudry.services.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laudry.services.config.JwtUtil;
import com.laudry.services.dto.AuthRequest;
import com.laudry.services.dto.AuthResponse;
import com.laudry.services.model.User;
import com.laudry.services.repo.UserRepository;
import com.laudry.services.service.UserServiceImpl;

@RestController
public class UserController{
	@Autowired
	private AuthenticationManager authManager;
 @Autowired
 private UserRepository userRepository;
	@Autowired
	private JwtUtil jwtUtil;
	@Autowired
	private UserServiceImpl userService;
	@PostMapping("/users")
public User saveUser(@RequestBody User user) {
	User savedUser= userService.saveUser(user); 
	return savedUser;
}
	
	@PostMapping("/api/login")
	public ResponseEntity<?> login(@RequestBody AuthRequest request) {
		authManager.authenticate(
	        new UsernamePasswordAuthenticationToken(request.getUsername(), request.getPassword())
	    );

	    User user = userRepository.findByEmail(request.getUsername())
	                  .orElseThrow(() -> new UsernameNotFoundException("User not found"));

	    String token = jwtUtil.generateToken(request.getUsername());

	    String role = user.getRole(); // e.g., "ADMIN"
	    int roleId;

	    switch (role.toUpperCase()) {
	        case "ADMIN": roleId = 1; break;
	        case "VENDOR": roleId = 2; break;
	        case "CLIENT": roleId = 3; break;
	        default: roleId = 0; // unknown or unauthorized
	    }

	    return ResponseEntity.ok(new AuthResponse(token, roleId));
	}

}
