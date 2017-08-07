package com.ibm.actions;


import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.io.*;
import java.util.*;

import com.opensymphony.xwork2.ActionSupport;
import com.ibm.bo.*;
import com.ibm.beans.Employee;
import com.ibm.dao.LoginDAO;

//import com.testObj.Test;



public class LoginAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = -7641976286350960735L;
	
	/*array list holds info*/
	private List<Employee> employees = null;
	private List<LoginDAO> employeeAccount = null;
	
	/*declartions*/
	private String username;
	private String password;
	
	private String firstName;
	private String lastName;
	
	private String email;
	
	public static final int MIN_PASSWORD_LENGTH = 8;
	public static final int MAX_PASSWORD_LENGTH = 35;
	
	
	/*logic for when login button is clicked*/
	public String loginUser()  {
		
		employeeAccount = LoginBO.fetchLoginDAO();
		employees = EmpBO.fetchEmployees();
		
		
		for(int k = 0; k<employees.size(); k++)
		{
			System.out.println("checking for id");
			int resultId = Integer.parseInt(employees.get(k).getId());
			System.out.println(resultId);
			System.out.println(employees.get(k).getFirstName()+" "+ employees.get(k).getLastName() + "  "+ employees.get(k).getId());
		}
		
		
		for(int i = 0; i < employeeAccount.size(); i++)
		{
			System.out.println(employeeAccount.get(i).getUsername());
			
			if(employeeAccount.get(i).getUsername().compareTo(username) == 0 && employeeAccount.get(i).getPassword().compareTo(password) == 0)
			{
				//employees = EmployeeBo.fetchEmployees();
				Collections.sort(employees, new Comparator<Employee>() {
		            public int compare(Employee v1, Employee v2) {
		                return v1.getFirstName().compareTo(v2.getFirstName());
		            }
		        }); 
			   return "SUCCESS";	
			}
		}
		
		
		//needs to return a string
		addActionError("Username or Password do not match");
		return "ERROR";
				
	}
	
	
	/*getter and setter*/
	public String getUsername() {
		return username;
	}
	
	public String getPassword()
	{
		return password;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setPassword(String password)
	{
		this.password = password;
		
	}
	
	public List<Employee> getEmployees()
	{
		return employees;
	}
	
	public void setEmployees(List<Employee> employees)
	{
		this.employees = employees;
	}

	
	public String getFirstname()
	{
		return firstName;
	}

	public void setFirstname(String firstName) {
		this.firstName = firstName;

	}
	
	public String getLastname()
	{
		return lastName;
	}

	public void setLastname(String lastName) {
		this.lastName = lastName;

	}
	
	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email) {
		this.email = email;

	}
	
	
	

}