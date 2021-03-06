package com.ibm.beans;

  

public class Employee {
	String firstName;
	String lastName;
	String address;
	String city;
	String state;
	String zip;
	String cellPhone;
	String homePhone;
	public String email;
	String id;


	public Employee(String empfName, String emplName, String empAddress, String empCity, String empState, String empZip,
			String empcPhone, String emphPhone, String empEmail, String empId) {
		//this();
		firstName = empfName;
		lastName = emplName;
		address = empAddress;
		city = empCity;
		state = empState;
		zip = empZip;
		cellPhone = empcPhone;
		homePhone = emphPhone;
		email = empEmail;
		id = empId; 
	}

	public Employee(String[] fields) {
		firstName = fields[0];
		lastName = fields[1];
		address = fields[2];
		city = fields[3];
		state = fields[4];
		zip = fields[5];
		cellPhone = fields[6];
		homePhone = fields[7];
		email = fields[8]; 
		id = fields[9];
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getCellPhone() {
		return cellPhone;
	}

	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}

	public String getHomePhone() {
		return homePhone;
	}

	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getId()
	{
		return id;
	}
	
	public void setId(String id)
	{
		this.id = id;
	}
	
}