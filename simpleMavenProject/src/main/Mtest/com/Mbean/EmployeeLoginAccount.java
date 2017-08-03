package com.Mbean;

public class EmployeeLoginAccount {
	
	String username;
	String password;

	public EmployeeLoginAccount() {
		super();
		
	}

	
	
	public EmployeeLoginAccount(String elaUsername, String elaPassword) {
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
