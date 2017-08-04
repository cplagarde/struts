<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Add/Edit Page</title>
</head>

<h3>Welcome <s:property value="username"></s:property></h3>
<body>
<s:form action="saveEditEmp">

<s:textfield name="firstName" label="First Name" />
		<s:textfield name="lastName" label="Last Name" />
		<s:textfield name="address" label="Address" />
		<s:textfield name="city" label="City" />
		 <s:select label= "State" headerValue ="Select"  name="state" list= "#{'':'Select','AL':'Alabama', 'AK':'Alaska', 'DE': 'Delaware', 'DC': 'DC', 'FL': 'FLoria','GA':'GA', 'HI':'HI', 'ID': 'ID', 'IL': 'IL', 'IN': 'IN',
		'IA':'IA', 'KS':'KS', 'KY': 'KY', 'LA': 'LA', 'ME': 'ME','MD':'MD', 'MA':'MA', 'MI': 'MI', 'MN': 'MN', 'MS': 'MS',
		'MO':'MO', 'MT':'MT', 'NE': 'NE', 'NV': 'NV', 'NH': 'NH','NJ':'NJ', 'NM':'NM', 'NY': 'NY', 'NC': 'NC', 'ND': 'ND',
		'OH':'OH', 'OK':'OK', 'OR': 'OR', 'PA': 'PA', 'RI': 'RI','SC':'SC', 'SD':'SD', 'TN': 'TN', 'TX': 'TX', 'UT': 'UT',
		'VT':'VT', 'VA':'VA', 'WA': 'WA', 'WV': 'WV', 'WI': 'WI' }"/> 
		
		<s:textfield name="zip" label="Zip/Postal Code" />
		<s:textfield name="cellPhone" label="Cell Phone" />
		<s:textfield name="homePhone" label="Home Phone" />
		<s:textfield name="email" label="Email" />
		<s:textfield name="id" label ="ID"/>
		
		
		<s:if test="hasActionErrors()">
   <div class="EmployeeEditedSave">
      <s:actionerror/>
   </div>
</s:if>
		
		<input type="submit" value="Add/Update Employee" name="save/update" />
		<input type="submit" value="Cancel" name="Cancel" />
		
	</s:form>
	

</body>
