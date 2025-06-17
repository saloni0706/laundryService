package com.laudry.services.dto;

public class AuthResponse {
	
    private String token;
    private int roleId;
    
  public int getRoleId() {
	      return roleId;
  }
  public AuthResponse(String token,  int roleId) {
      this.token = token;
      
      this.roleId = roleId;
  }
    
    public String getToken() {
        return token;
    }
	
}
