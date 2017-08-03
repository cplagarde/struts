package com.ibm.actions;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibm.beans.Employee;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String email;
	private String password;
	private Map<String, Object> sessionMap;
	private Employee employee = null;
	private List<Employee> employees = null;

	public String loginEmployee() {
		String returnStatus = SUCCESS;

		// TODO Complete login action method.

		this.setSession(sessionMap);
		return returnStatus;
	}

	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public List<Employee> getEmployees() {
		return employees;
	}

	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}

}
