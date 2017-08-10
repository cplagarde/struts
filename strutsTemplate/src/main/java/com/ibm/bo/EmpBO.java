//package com.ibm.bo;
//import java.io.BufferedReader;
//import java.io.BufferedWriter;
//import java.io.File;
//import java.io.FileReader;
//import java.io.FileWriter;
//import java.io.IOException;
//import java.io.InputStreamReader;
//import java.net.URI;
//import java.net.URISyntaxException;
//import java.net.URL;
//import java.util.ArrayList;
//import java.util.List;
//
//
//import java.util.Collections;
//import java.util.Comparator;
//
//import com.ibm.beans.Employee;
//import com.opensymphony.xwork2.ActionSupport;
//
//
//
//public class EmpBO extends ActionSupport { 
//
//    
//    /** 
//     * 
//     */ 
//    private static final long serialVersionUID = 1L; 
//    
//    public static List<Employee> fetchEmployees() { 
////		Voodoo magic to get relative path
//	    URL url = new EmpBO().getClass().getClassLoader().getResource("/employees.csv");
//	    URI uri = null;
//	    try {
//			uri = url.toURI();
//		} catch (URISyntaxException e1) {
//			// TODO Auto-generated catch block
//			System.out.println("failed to convert url to uri");
//			e1.printStackTrace();
//		}
//	    File csvFile = new File(uri);
//	    
//	    String line = ""; 
//	    String csvSplitBy = ","; 
//	    List<Employee> emparray = new ArrayList<Employee>(); 
//	        Employee employee; 
//	    
//	    Collections.sort(emparray, new Comparator<Employee>() {
//	        public int compare(Employee v1, Employee v2) {
//	            return v1.getFirstName().compareTo(v2.getFirstName());
//	        }
//	    });         
//	    try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) { 
//	
//	        while ((line = br.readLine()) != null) { 
//	                
//	            // use comma as separator 
//	            String[] emp = line.split(csvSplitBy); 
//	
//	            employee = new Employee(emp[0], emp[1], emp[2], emp[3], emp[4], emp[5], emp[6], emp[7], emp[8], emp[9]); 
//	            emparray.add(employee);
//	            
//	            //System.out.println("Employee name is " + employee.getFirstName() + " " + employee.getLastName()); 
//	            //System.out.println("Employee Data: [ Address= " + employee.getAddress() + " , City= " + employee.getCity() + " , State= " + employee.getState() + " , ZIP= " + employee.getZip() + " , Cell Phone= " + employee.getCellPhone() + " , Home Phone= " + employee.getHomePhone() + " , E-Mail= " + employee.getEmail() + " ]"); 
//	        } 
//	
//	    } catch (IOException e) { 
//	        e.printStackTrace(); 
//	    } 
//	    return emparray; 
//    } 
//    
//    
//    /*Write to file*/
//    public static List<Employee> Writetofile() throws IOException
//    {
////   	Voodoo magic to get relative path
//    	URL url = new EmpBO().getClass().getClassLoader().getResource("/employees.csv");
//        URI uri = null;
//        try {
//    		uri = url.toURI();
//    	} catch (URISyntaxException e1) {
//    		// TODO Auto-generated catch block
//    		System.out.println("failed to convert url to uri");
//    		e1.printStackTrace();
//    	}
//        File csvFile = new File(uri);
//    	
//        StringBuilder s = new StringBuilder();
//     
//	    List<Employee> emparray = new ArrayList<Employee>(); 
//	    // Employee employee; 
//	    
//	    for(int k =0; k < emparray.size(); k++ )
//	    {
//	    	s.append(emparray.get(k).getFirstName() + "," + emparray.get(k).getLastName() + "," + emparray.get(k).getAddress() + "," + emparray.get(k).getCity() + "," + emparray.get(k).getState() + "," + emparray.get(k).getZip() 
//	    			+ "," + emparray.get(k).getCellPhone() + "," + emparray.get(k).getHomePhone()+ "," + emparray.get(k).getEmail() + "," +emparray.get(k).getId() +" ");
//	    }
//	    
//	    try(BufferedWriter b = new BufferedWriter (new FileWriter(csvFile)))
//	    {
//	    	b.write(s.toString());
//	    	System.out.println("Written to file");
//	    	
//	    }
//	    catch(IOException e)
//	    {
//	    	e.printStackTrace();
//	    }
//	    System.out.println("List of array:" + emparray.size() );
//	    return emparray;
//    }
//    
//    
//    
//    
//    
//} 
//
//
