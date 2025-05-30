package com.laudry.services.service;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.laudry.services.model.User;
import com.laudry.services.repo.UserRepository;

@Service
public class UserService implements UserServiceImpl, UserDetailsService {
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
@Autowired
private UserRepository userRepository; 
	@Override
	public User saveUser(User user) {
		String password = user.getPassword();		
		String encodedPassword = passwordEncoder.encode(password);		
		user.setPassword(encodedPassword);
		User savedUser = userRepository.save(user); 
		return savedUser;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	    try {
	        Optional<User> opt = userRepository.findByEmail(username);
	        if (opt.isEmpty()) {
	            throw new UsernameNotFoundException("User not found with username: " + username);
	        }

	        User user = opt.get();
	        String roles = user.getRole(); // e.g., "ADMIN" or "ADMIN,USER"
	        Set<GrantedAuthority> authorities = new HashSet<>();

	        for (String role : roles.split(",")) {
	            authorities.add(new SimpleGrantedAuthority("ROLE_" + role.trim().toUpperCase()));
	        }

	        return new org.springframework.security.core.userdetails.User(
	            username,
	            user.getPassword(),
	            authorities
	        );
	    } catch (Exception e) {
	        e.printStackTrace(); // For debugging; remove in production
	        throw new InternalAuthenticationServiceException("Login failed", e);
	    }
	}


}
