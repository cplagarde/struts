package com.Mbean;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

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
	
	/*public String Savechanges()
	{
		Employee employee = addEmployee();
		employees = EmployeeBo.fetchEmployees();
		employees.add(employee);
		System.out.println(employee);
		return "SUCCCESS";
	}*/
	
	
	
	
	public String getFirstName() {
		return firstName;
	}

	//@RequiredStringValidator(message = "Type first name")
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
		
		/*
		if(firstName.length() < 1 || lastName.length() < 1 || address.length() < 1 || city.length() < 1 || state.length() < 1|| zip.length() <1 || 
				cellPhone.length() < 1 || homePhone.length() < 1 || email.length() < 1)
		{
			addActionError("Cant leave any text field blank");
			System.out.println("Cant leave any text field blank");
			return "ERROR";
		}*/
		/*
		if(firstName.length() < 2 ||firstName.length() > 35 && lastName.length() < 2 || lastName.length() > 35 && address.length() < 10 || address.length() > 50 
				&& city.length() < 5 || city.length() >50 && state.length() == 2 && zip.length() < 5 || zip.length() >9 && cellPhone.length() == 10 && homePhone.length() == 10 
				&& email.length() <10 || email.length() >50)
		{
			addActionError("too long or too short");
			System.out.println("too long or too short");
			return "ERROR";
		}*/
	
		
		
			
		//System.out.println("saved changed updated");
		Employee employee = addEmployee();
		employees = EmployeeBo.fetchEmployees();
		//employees.add(employee);
		//employees = EmployeeBo.Writetofile();
		
		
	if(employee.getFirstName().length() == 0)
	{
		addActionError("First Name field blank");
		
		return "ERROR";
	}
	if(employee.getLastName().length() == 0)
	{
		addActionError("Last Name field blank");
		
		return "ERROR";
	}
	if(employee.getAddress().length() == 0)
	{
		addActionError("Address field blank");
		
		return "ERROR";
	}
	if(employee.getCity().length() == 0)
	{
		addActionError("City field blank");
		
		return "ERROR";
	}
	if(employee.getState().length() == 0)
	{
		addActionError("State field blank");
		
		return "ERROR";
	}
	if(employee.getZip().length() == 0)
	{
		addActionError("Zip field blank");
		
		return "ERROR";
	}
	if(employee.getCellPhone().length() == 0)
	{
		addActionError("Cell Phone field blank");
		
		return "ERROR";
	}
	if(employee.getHomePhone().length() == 0)
	{
		addActionError("Home Phone field blank");
		
		return "ERROR";
	}
	if(employee.getEmail().length() == 0)
	{
		addActionError( "Email field blank");
		
		return "ERROR";
	}
	
	if(!firstName.matches("[a-zA-Z_]+"))
	{
		addActionError( "Name must me in characters");
		return "ERROR";
	}
	if(!lastName.matches("[a-zA-Z_]+"))
	{
		addActionError( "Name must me in characters");
		return "ERROR";
	}
	
	
	if(!city.matches("[a-zA-Z_]+"))
	{
		addActionError("City must be in characters");
		
		return "ERROR";
	}

	if(!zip.matches("[0-9]+"))
	{
	
		addActionError("Zip must be in numbers");
		return "ERROR";
	}
	
	
	if(!cellPhone.matches("[0-9]+") || !homePhone.matches("[0-9]+"))
	{
		addActionError("Phone number must be in numbers");
		return "ERROR";
		
	}
	
	if(firstName.length() <2 || firstName.length() >35 && lastName.length() <2 || lastName.length() >35)
	{
		addActionError("too long or too short name mus tbe between 2-35");
		return "ERROR";
	}
	
	if(address.length() <10 || address.length() >50)
	{
		addActionError("address must be between 10 - 50");
		return "ERROR";
	}
	
	if(city.length() <5 || city.length() >50)
	{
		addActionError("city must be between 5 - 50");
		return "ERROR";
	}
	if(zip.length() < 5 || zip.length() >9 )
	{
		addActionError("zip must be 5-9 digits");
		
		return "ERROR";
	}
	
	if(cellPhone.length() < 10 || cellPhone.length() >10 )
	{
		addActionError("Number must be 10 digits");
		
		return "ERROR";
	}
	if(homePhone.length() < 10 || homePhone.length() >10 )
	{
		addActionError("Number must be 10 digits");
		
		return "ERROR";
	}
	
	if(email.length() <10 || email.length() >50)
	{
		addActionError("email must be between 10 -50");
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
		
		String csvFile = "C:/Users/EmilyGonzalez/employees.csv";
    	
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
      	//System.out.println(employees.get(0).getFirstName());
      	
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
