package com.ibm.bo;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import com.ibm.actions.LoginAction;
import com.ibm.dao.EmpDAO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginBO extends ActionSupport {

	String username;
	String password;
	private static final long serialVersionUID = 1L;
	
	public static List<EmpDAO> fetchEmpDAO() { 
//		Voodoo magic to get relative path
		URL url = new EmpBO().getClass().getClassLoader().getResource("/login_account.csv");
	    URI uri = null;
	    try {
			uri = url.toURI();
		} catch (URISyntaxException e1) {
			// TODO Auto-generated catch block
			System.out.println("failed to convert url to uri");
			e1.printStackTrace();
		}
	    File csvFile = new File(uri);
		
		
	    String line = ""; 
	    String cvsSplitBy = ","; 
	    List<EmpDAO> emparraylogin = new ArrayList<EmpDAO>(); 
	    EmpDAO employeeLoginAccount; 
	    
	    
	    try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) { 
	    	while ((line = br.readLine()) != null) {   
	            // use comma as separator 
	            String[] emp = line.split(cvsSplitBy); 
	            
	            employeeLoginAccount = new EmpDAO(emp[0], emp[1]); 
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


