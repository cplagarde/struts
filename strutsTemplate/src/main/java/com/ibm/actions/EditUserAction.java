package com.ibm.actions;

import java.util.List;
import com.opensymphony.xwork2.ActionSupport;

import com.ibm.bo.*;
import com.ibm.beans.*;

public class EditUserAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7641976286350960735L;
	
	/*array list holds info*/
	private List<Employee> employees = null;
	private List<Account> employeeAccount = null;
	
	/*declartions*/
	private String username;
	private String password;
	
	private String firstName;
	private String lastName;
	

	
	private String email;
	
	public static final int MIN_PASSWORD_LENGTH = 8;
	public static final int MAX_PASSWORD_LENGTH = 35;
	

	
	/*add and edit employee*/
	public String editUser()
	{
		System.out.println("hello");
		employees = EmpBO.fetchEmployees();
		
				for(int k = 0; k<employees.size(); k++)
				{
					System.out.println("checking for id");
					System.out.println(employees.get(k).getFirstName()+" "+ employees.get(k).getLastName() + "  "+ employees.get(k).getId());
				}
				
		
		return "SUCCESS";
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
