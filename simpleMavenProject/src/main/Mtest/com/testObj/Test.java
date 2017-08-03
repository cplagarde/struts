package com.testObj;

import java.io.*;
import java.util.*;
import com.Mbean.EmployeeLoginAccount;

public class Test {


    InputStreamReader isr = new InputStreamReader(System.in);
    BufferedReader br = new BufferedReader(isr);
    
  //  String inputUser= br.readLine();
  
 //   String inputPassword = br.readLine();
    
    
    
    Test t = new Test();
   // t.readPassword(inputUser, inputPassword);




public void readPassword(String inputUser,String inputPassword) throws Exception {
	   Scanner scr = new Scanner(new File("C:/Users/EmilyGonzalez/login_account.csv"));
	   boolean flag=false;
	   while(scr.hasNextLine()){
	   String line = scr.nextLine();
	   String username= line.substring(0,line.indexOf(' '));
	   String password =line.substring(line.indexOf(' ')+1,line.length());
	       System.out.println(username+","+password);

	  }
	   

}

}
