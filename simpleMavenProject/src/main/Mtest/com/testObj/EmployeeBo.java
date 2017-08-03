package com.testObj;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Collections;
import java.util.Comparator;

import com.Mbean.Employee;
import com.opensymphony.xwork2.ActionSupport;



public class EmployeeBo extends ActionSupport { 

    
    /** 
     * 
     */ 
    private static final long serialVersionUID = 1L; 
    
    public static List<Employee> fetchEmployees() { 
    String csvFile = "C:/Users/EmilyGonzalez/employees.csv"; 
    String line = ""; 
    String cvsSplitBy = ","; 
    List<Employee> emparray = new ArrayList<Employee>(); 
        Employee employee; 
    
        Collections.sort(emparray, new Comparator<Employee>() {
            public int compare(Employee v1, Employee v2) {
                return v1.getFirstName().compareTo(v2.getFirstName());
            }
        }); 
    try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) { 

        while ((line = br.readLine()) != null) { 
                
            // use comma as separator 
            String[] emp = line.split(cvsSplitBy); 

            employee = new Employee(emp[0], emp[1], emp[2], emp[3], emp[4], emp[5], emp[6], emp[7], emp[8], emp[9]); 
            emparray.add(employee);
            
                    //System.out.println("Employee name is " + employee.getFirstName() + " " + employee.getLastName()); 
                    //System.out.println("Employee Data: [ Address= " + employee.getAddress() + " , City= " + employee.getCity() + " , State= " + employee.getState() + " , ZIP= " + employee.getZip() + " , Cell Phone= " + employee.getCellPhone() + " , Home Phone= " + employee.getHomePhone() + " , E-Mail= " + employee.getEmail() + " ]"); 
        } 
        
        //System.out.println("Employee List Size --> " + emparray.size()); 
       /* Collections.sort(emparray, new Comparator<Employee>() {
            public int compare(Employee v1, Employee v2) {
                return v1.getFirstName().compareTo(v2.getFirstName());
            }
        });  */
        

    } catch (IOException e) { 
        e.printStackTrace(); 
    } 
    return emparray; 
    } 
    
    
    /*Write to file*/
    
    public static List<Employee> Writetofile() throws IOException
    {
    	//String csvFile = "C:/Users/EmilyGonzalez/employees.csv"; 
    	String csvFile = "C:/Users/EmilyGonzalez/test.csv";
    	
     StringBuilder s = new StringBuilder();
     
     List<Employee> emparray = new ArrayList<Employee>(); 
    // Employee employee; 
    
    for(int k =0; k < emparray.size(); k++ )
    {
    	s.append(emparray.get(k).getFirstName() + "," + emparray.get(k).getLastName() + "," + emparray.get(k).getAddress() + "," + emparray.get(k).getCity() + "," + emparray.get(k).getState() + "," + emparray.get(k).getZip() 
    			+ "," + emparray.get(k).getCellPhone() + "," + emparray.get(k).getHomePhone()+ "," + emparray.get(k).getEmail() + "," +emparray.get(k).getId() +" ");
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
    System.out.println("List of array:" + emparray.size() );
    return emparray;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
} 
