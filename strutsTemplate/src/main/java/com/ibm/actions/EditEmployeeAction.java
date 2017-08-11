package com.ibm.actions;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;


import com.ibm.beans.Employee;
import com.ibm.dao.EmployeeDAO;

public class EditEmployeeAction extends ActionSupport {

	private static final long serialVersionUID = 6491979737900738459L;
	private List<Employee> employees = null;
	String firstName;
	String lastName;
	String address;
	String city;
	String state;
	String zip;
	String cellPhone;
	String homePhone;
	String email;
	String id;
	String username;	
	String prvBtn;
	
	

	public String getFirstName() {
		return firstName;
	}
	//RequiredStringValidator(message = "Type first name")
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
	public List<Employee> getEmployees()
	{
		return employees;
	}
	public void setEmployees(List<Employee> employees)
	{
		this.employees = employees;
	}
	public String getPrvBtn() {
		return prvBtn;
	}
	public void setPrvBtn(String prvBtn) {
		this.prvBtn = prvBtn;
	}
	
	
	
	
	
	public String update() throws IOException
	{
		System.out.println(getPrvBtn());
		
		Employee employee = new Employee (firstName, lastName, address, city, state, 
				zip, cellPhone, homePhone, email, id);		
		EmployeeDAO pickleRick = new EmployeeDAO ();
		employees = pickleRick.fetchEmployeeData();
		
		Collections.sort(employees, new Comparator<Employee>()
		{
			public int compare(Employee v1, Employee v2)
			{
				return v1.getFirstName().toUpperCase().compareTo(v2.getFirstName().toUpperCase());
			}
		});
				
		if(employee.getFirstName().length() == 0 ||
			employee.getLastName().length() == 0 ||
			employee.getAddress().length() == 0 ||
			employee.getCity().length() == 0 ||
			employee.getState().matches("-1") ||
			employee.getZip().length() == 0 ||
			employee.getCellPhone().length() == 0 ||
			employee.getHomePhone().length() == 0 ||
			employee.getEmail().length() == 0
			)
		{
			addActionError("Fields must not be blank");
		
			return "ERROR";
		}

	
		if(!firstName.matches("[a-zA-Z_]+") ||
			!lastName.matches("[a-zA-Z_]+") ||
			!city.matches("[a-zA-Z_\\s]+") ||
			!zip.matches("[0-9]+") ||
			!cellPhone.matches("[0-9]+")			
			)
		{
			addActionError( "Fields must use valid characters");
			return "ERROR";
		}
	

		if(firstName.length() <2 || firstName.length() >35 ||
			lastName.length() <2 ||	lastName.length() >35 ||
			address.length() < 5 || address.length() > 50 ||
			city.length() < 5 || city.length() > 50 ||
			zip.length() < 5 || zip.length() > 9 ||
			cellPhone.length() < 8 || cellPhone.length() > 12 ||
			homePhone.length() < 8 || homePhone.length() > 12 ||
			email.length() < 7 || email.length() > 50
			)
		{
			addActionError("Fields must use correct character lengths");
			return "ERROR";
		}
	
		// update employee
		for (int i = 0; i < employees.size(); i++) {
			if (employees.get(i).getEmail().equals(email)) {
				employees.get(i).setFirstName(firstName);
				employees.get(i).setLastName(lastName);
				employees.get(i).setAddress(address);
				employees.get(i).setCity(city);
				employees.get(i).setState(state);
				employees.get(i).setZip(zip);
				employees.get(i).setCellPhone(cellPhone);
				employees.get(i).setHomePhone(homePhone);
				employees.get(i).setEmail(email);
				employees.get(i).setId(id);
				try {
					pickleRick.save(employees);
				}
				catch (IOException e) {
					e.printStackTrace();
				}
				catch (URISyntaxException e) {
					e.printStackTrace();
				}
				
				Collections.sort(employees, new Comparator<Employee>()
				{
					public int compare(Employee v1, Employee v2)
					{
						return v1.getFirstName().toUpperCase().compareTo(v2.getFirstName().toUpperCase());
					}
				});
				
				return "SUCCESS";
			}
		}
		// add employee
		employees.add(employee);
		try {
			pickleRick.save(employees);
		}
		catch (IOException e) {
			e.printStackTrace();
		}
		catch (URISyntaxException e) {
			e.printStackTrace();
		}
		
		Collections.sort(employees, new Comparator<Employee>()
		{
			public int compare(Employee v1, Employee v2)
			{
				return v1.getFirstName().toUpperCase().compareTo(v2.getFirstName().toUpperCase());
			}
		});
		
		return "SUCCESS";	
	}

}



