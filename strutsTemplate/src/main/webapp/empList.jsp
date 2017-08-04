<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
	<h3>
		Welcome
		<s:property value="username"></s:property>
	</h3>

	<b>Employee List</b>
	<br />


	<s:if test="hasActionMessages()">
		<div class="empList">
			<s:actionmessage />
		</div>
	</s:if>

	<s:if test="hasActionErrors()">
		<div class="login">
			<s:actionerror />
		</div>
	</s:if>



	<s:form action="update">


	<s:iterator value="employees" status="employeesStatus">
		<s:url id="eEmail" action="PrePop">
			<s:param name="email">
				<s:property value="email" />
			</s:param>
		</s:url>

		<tr>
			<td><a href='<s:property value="#eEmail"/>'><s:property
						value="firstName" /> <s:property value="lastName" /></a></td>
						<!-- hidden status index -->

			<td><s:property value="email" /></td>
		</tr>


	</s:iterator>

		<input type="submit" value="Add Employee" name="UpdateAddEmp" />



	</s:form>


</body>
</html>