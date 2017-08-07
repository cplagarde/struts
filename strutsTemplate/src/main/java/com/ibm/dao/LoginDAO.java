package com.ibm.dao;

import com.opensymphony.xwork2.ActionSupport;

public class LoginDAO extends ActionSupport {
	

	
	String username;
	String password;

	public LoginDAO() {
		super();
		
	}

	
	public LoginDAO(String elaUsername, String elaPassword) {
		this();
		username = elaUsername;
		password = elaPassword;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	



}