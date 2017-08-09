package com.ibm.beans;

import com.opensymphony.xwork2.ActionSupport;

public class Account extends ActionSupport {

	String username;
	String password;

	public Account(String[] fields) {
		username = fields[0];
		password = fields[1];
	}

	public Account(String elaUsername, String elaPassword) {
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