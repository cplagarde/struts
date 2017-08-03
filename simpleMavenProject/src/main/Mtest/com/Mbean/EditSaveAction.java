package com.Mbean;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.testObj.EmployeeBo;
import com.Mbean.Employee;

public class EditSaveAction extends ActionSupport {

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
	
	
	
	
	public Employee addEmployee()
	{
		Employee e = new Employee(this.firstName,this.lastName,this.address,this.city,this.state, this.zip, this.cellPhone,this.homePhone,this.email, this.id);
	
		return e;
	}
	
	public String Savechanges() throws IOException
	{
		
		Employee employee = addEmployee();
		employees = EmployeeBo.fetchEmployees();
		
		
		if(employee.getFirstName().length() == 0 ||
			employee.getLastName().length() == 0 ||
			employee.getAddress().length() == 0 ||
			employee.getCity().length() == 0 ||
			employee.getState().length() == 0 ||
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
	

		if(firstName.length() <2 || 
			firstName.length() >35 ||
			lastName.length() <2 ||
			lastName.length() >35 ||
			address.length() < 5 ||
			address.length() > 50 ||
			city.length() < 5 ||
			city.length() > 50 ||
			zip.length() < 5 ||
			zip.length() > 9 ||
			cellPhone.length() != 10 ||
			homePhone.length() != 10 ||
			email.length() < 10 ||
			email.length() > 50
			)
		{
			addActionError("Fields must use correct character lengths");
			return "ERROR";
		}

		
		for(int i = 0; i < employees.size(); i++)
		{
			System.out.println("jklj");
			System.out.println(employees.get(i).email);
		
			if(employees.get(i).getEmail().compareTo(email) == 0)
			{
				System.out.println("for when email exist it goes inside if state ");
				System.out.println(employees.get(i).getFirstName()+" "+ employees.get(i).getLastName());
				addActionError("Information has been updated!");
				//System.out.println("email exist!");
				
				employees.remove(i);
				
				break;	
			
			}	
		}
	
		employees.add(employee);
		
		
		Collections.sort(employees, new Comparator<Employee>()
		{
			public int compare(Employee v1, Employee v2)
			{
				return v1.getFirstName().toUpperCase().compareTo(v2.getFirstName().toUpperCase());
			}
		});
		
		
//		Voodoo magic to get relative path
		URL url = new EmployeeBo().getClass().getClassLoader().getResource("/employees.csv");
	    URI uri = null;
	    try {
			uri = url.toURI();
		} catch (URISyntaxException e1) {
			// TODO Auto-generated catch block
			System.out.println("failed to convert url to uri");
			e1.printStackTrace();
		}
	    File csvFile = new File(uri);
	    
//	    absolute pathing
//		String csvFile = "C:/Users/ChandlerLagarde/employees.csv";
    	
	    StringBuilder s = new StringBuilder();
	     
	    
	    for(int k =0; k < employees.size(); k++ )
	    {
	    	s.append(employees.get(k).getFirstName() + "," + employees.get(k).getLastName() + "," + employees.get(k).getAddress() + "," + employees.get(k).getCity() + "," + employees.get(k).getState() + "," + employees.get(k).getZip() 
	    			+ "," + employees.get(k).getCellPhone() + "," + employees.get(k).getHomePhone()+ "," + employees.get(k).getEmail() + "," +k +"\n");
	    }
	    
	    try(BufferedWriter b = new BufferedWriter (new FileWriter(csvFile)))
	    {
	    	b.write(s.toString());
	    	System.out.println("Written to file");
	    }
	    catch(IOException e)
	    {
	    	e.printStackTrace();
	    }
	    System.out.println("List of array:" + employees.size() );
	    
		
		for(int i = 0; i <employees.size(); i ++)
		{
			System.out.println("added employee to list");
			System.out.println(employees.get(i).getFirstName()+" "+ employees.get(i).getLastName() + "  "+ employees.get(i).getId());
		}
      	return "SUCCESS";
	}


	
	
	/*populate from url link*/
	public String Populate()
	{		
		if(email != null)
		{		
			employees = EmployeeBo.fetchEmployees();
			
			for(int k = 0; k<employees.size(); k++)
			{
				System.out.println("checking for id for url click");
				System.out.println(employees.get(k).getFirstName()+" "+ employees.get(k).getLastName() + "  "+ employees.get(k).getId());
			}
		
			for(Employee employee : employees )
			{
				if(employee.getEmail().equals(email))
				{
					firstName = employee.getFirstName();
					lastName = employee.getLastName();
					address = employee.getAddress();
					city = employee.getCity();
					state = employee.getState();
					zip = employee.getZip();
					cellPhone = employee.getCellPhone();
					homePhone = employee.getHomePhone();
					email = employee.getEmail();
					id = employee.getId();
				}
			}	
		}
		return "SUCCESS";
	}
	

}



