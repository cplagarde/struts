package com.testObj;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.Mbean.WelcomeUserAction;
import com.Mbean.EmployeeLoginAccount;
import com.opensymphony.xwork2.ActionSupport;

public class LoginReadfile extends ActionSupport {

	 String username;
	String password;
	private static final long serialVersionUID = 1L;
	
	public static List<EmployeeLoginAccount> fetchEmployeesLoginAccount() { 
	    String csvFile = "C:/Users/EmilyGonzalez/login_account.csv"; 
	    String line = ""; 
	    String cvsSplitBy = ","; 
	    List<EmployeeLoginAccount> emparraylogin = new ArrayList<EmployeeLoginAccount>(); 
	    EmployeeLoginAccount employeeLoginAccount; 
	    
	    
	    try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) { 

	        while ((line = br.readLine()) != null) { 
	                
	            // use comma as separator 
	            String[] emp = line.split(cvsSplitBy); 

	            
	            employeeLoginAccount = new EmployeeLoginAccount(emp[0], emp[1]); 
	            emparraylogin.add(employeeLoginAccount); 
	            
	           
	            
	    
	                    System.out.println("Employee name is " + employeeLoginAccount.getUsername() + " " + employeeLoginAccount.getPassword()); 
	                  
	        } 
	        
	       // System.out.println("Employee Account Information (size)--> " + emparraylogin.size()); 

	    } catch (IOException e) { 
	        e.printStackTrace(); 
	    } 
	    return emparraylogin; 
	    } 
	
	

	

}
