package com.ibm.dao;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;

import com.ibm.beans.*;

public class AccountDAO {
	private final String PATH = "/login_account.csv";
	private final String COMMA_PATTERN = ",";

		public List<Account> fetchAccountData()
		{
			List<Account> accountData = new ArrayList<>();
			BufferedReader br = getFileInputStream();
			String line = "";
			if(br != null)
			{
				try {
						while(  (line = br.readLine()) != (null) )
						{		
							String[] fields = line.split(COMMA_PATTERN);
							if(fields.length == 2)
								accountData.add(new Account(fields));
							else
							{
								System.out.println("Unexpected arg length. Expected two strings.");
							}
						}
					}
				catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
				finally {
					try{
						br.close();
					}
					catch(IOException e)
					{
						e.printStackTrace();
					}
				}				
			}
			return accountData;
		}
		
		// returns an input stream for reading from a file
		public BufferedReader getFileInputStream() {
		try {
			File empFile = new File(this.getClass().getClassLoader().getResource(PATH).toURI());
			BufferedReader br = new BufferedReader(new FileReader(empFile));
			return br;			
		} 
		catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} 
		catch (IOException e)
		{
			e.printStackTrace();
			return null;
		}
	}

}
