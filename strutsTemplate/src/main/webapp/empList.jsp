<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee List</title>

<style>
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
</style>


</head>
<body>
	<h3>
		Welcome
		<s:property value="username"></s:property>
	</h3>

	<b>Employee List</b>
	<br />
	
	<!-- testing modal box -->	
	
	
	
	
	<!-- Trigger/Open The Modal -->
	<button id="myBtn">Open Modal</button>
	
	<!-- The Modal -->
	<div id="myModal" class="modal">
	
	  <!-- Modal content -->
	  <div class="modal-content">
	    <span class="close">&times;</span>
	    <p>Some text in the Modal..</p>
	 
	  
	  <h3>Welcome <s:property value="username"></s:property></h3>
	  
	<s:form action="saveEditEmp">

	<s:textfield name="firstName" label="First Name" />
		<s:textfield name="lastName" label="Last Name" />
		<s:textfield name="address" label="Address" />
		<s:textfield name="city" label="City" />
		 <s:select label= "State" headerValue ="Select"  name="state" list= "#{'':'Select','AL':'AL', 'AK':'AK', 'DE': 'DE',
		 'DC': 'DC', 'FL': 'FL','GA':'GA', 'HI':'HI', 'ID': 'ID', 'IL': 'IL', 'IN': 'IN', 'IA':'IA', 'KS':'KS', 'KY': 'KY',
		 'LA': 'LA', 'ME': 'ME','MD':'MD', 'MA':'MA', 'MI': 'MI', 'MN': 'MN', 'MS': 'MS', 'MO':'MO', 'MT':'MT', 'NE': 'NE',
		 'NV': 'NV', 'NH': 'NH','NJ':'NJ', 'NM':'NM', 'NY': 'NY', 'NC': 'NC', 'ND': 'ND', 'OH':'OH', 'OK':'OK', 'OR': 'OR',
		 'PA': 'PA', 'RI': 'RI','SC':'SC', 'SD':'SD', 'TN': 'TN', 'TX': 'TX', 'UT': 'UT', 'VT':'VT', 'VA':'VA', 'WA': 'WA',
		 'WV': 'WV', 'WI': 'WI' }"/> 
		
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
	
	   </div>
	
	</div>
	
	<script>
	// Get the modal
	var modal = document.getElementById('myModal');
	
	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");
	
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];
	
	// When the user clicks the button, open the modal 
	btn.onclick = function() {
	    modal.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	    modal.style.display = "none";
	}
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
	</script>
	


	<!-- done testing modal box -->
	
	
	
	
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
		<s:url var="eEmail" action="PrePop">
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