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

<script type="text/javascript">
	var counter = 0;
	function increment(){
		counter++;
		return counter;
	}	

	function changeModalButtonId()
	{
		var element = document.getElementById('myBtn');
			element.id = element.id + increment();
	}
	
// 	function f()
// 	{
// 		var btns = document.getElementsByClassName("btnArr");
// 		var fields = new Array(btns.length);
// 		for(var i = 0; i < btns.length; i++)
// 		{
// 			fields[i] = btns[i].getElementsByTagName("s:set");
// 		}
// 	}
	
	function updateModal(id) {
		var modalFields = document.getElementsByClassName("modalFields");
		var modalSelectors = document.getElementsByClassName("modalSelectors");
		var btn = document.getElementById(id);
		var numOfFields = btn.getElementsByTagName("s:set");
		
		for (var i = 0; i < numOfFields.length; i++){
			modalFields[i] = numOfFields[i];
		}
		for(var j = 0; j < )
	}
</script>

</head>
<body>
	<h3>
		Welcome
		<s:property value="username"></s:property>
	</h3>

	<b>Employee List</b>
	<br />
	
	
	
	
	<!-- testing modal box	 -->

	<!-- The Modal -->
	<div id="myModal" class="modal">
	
	  <!-- Modal content -->
	  <div class="modal-content">
	    <span class="close">&times;</span>

	<s:textfield class="modalFields" name="firstName" label="First Name" placeholder="" />
		<s:textfield class="modalFields" name="lastName" label="Last Name" placeholder="" />
		<s:textfield class="modalFields" name="address" label="Address" placeholder="" />
		<s:textfield class="modalFields" name="city" label="City" placeholder="" />
		<s:select class="modalSelectors" label="State" headerKey="-1" headerValue="" name="state" list= "#{'AL':'AL', 'AK':'AK', 'DE': 'DE',
		 'DC': 'DC', 'FL': 'FL','GA':'GA', 'HI':'HI', 'ID': 'ID', 'IL': 'IL', 'IN': 'IN', 'IA':'IA', 'KS':'KS', 'KY': 'KY',
 		 'LA': 'LA', 'ME': 'ME','MD':'MD', 'MA':'MA', 'MI': 'MI', 'MN': 'MN', 'MS': 'MS', 'MO':'MO', 'MT':'MT', 'NE': 'NE',
 		 'NV': 'NV', 'NH': 'NH','NJ':'NJ', 'NM':'NM', 'NY': 'NY', 'NC': 'NC', 'ND': 'ND', 'OH':'OH', 'OK':'OK', 'OR': 'OR',
 		 'PA': 'PA', 'RI': 'RI','SC':'SC', 'SD':'SD', 'TN': 'TN', 'TX': 'TX', 'UT': 'UT', 'VT':'VT', 'VA':'VA', 'WA': 'WA',
 		 'WV': 'WV', 'WI': 'WI' }" />
		<s:textfield class="modalFields" name="zip" label="Zip/Postal Code" placeholder="" />
		<s:textfield class="modalFields" name="cellPhone" label="Cell Phone" placeholder="" />
		<s:textfield class="modalFields" name="homePhone" label="Home Phone" placeholder="" />
		<s:textfield class="modalFields" name="email" label="Email" placeholder="" />
		<s:textfield class="modalFields" name="id" label ="ID" placeholder="" />
				
		
		<s:if test="hasActionErrors()">
   			<div class="EmployeeEditedSave">
      		<s:actionerror/>
      		</div>
		</s:if>
		
		<input type="submit" value="Add/Update Employee" name="save/update" />
		<input type="submit" value="Cancel" name="Cancel" />
	
	   </div>
	
	</div>
	
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




	<s:iterator value="employees">
		<s:url var="eEmail">
			<s:param name="email">
				<s:property value="email" />
			</s:param>
		</s:url>

		<tr>
			<td><button class="btnArr" id="myBtn"> 
					<s:property value="firstName" />
					<s:property value="lastName" />
					
					<s:set var="a" value="firstName" />
					
					
				</button>
				<div class="test">
					dsfsfdsa
				</div>
				<s:set var="a" value="firstName" />
				<s:set var="b" value="lastName" />
				<s:set var="c" value="address" />
				<s:set var="d" value="city" />
				<s:set var="e" value="state" /> 
				<s:set var="f" value="zip" /> 
				<s:set var="g" value="cellPhone" /> 
				<s:set var="h" value="homePhone" /> 
				<s:set var="i" value="email" /> 
				<s:set var="j" value="id" /> 
				<s:set var="k" value="username" />
				<script>
					
				</script>
				
				
				<script type="text/javascript">
					changeModalButtonId();
				</script>
			</td>
						<!-- hidden status index -->

			<td><s:property value="email" /></td>
		</tr>

	</s:iterator>
	

		<input type="submit" value="Add Employee" name="UpdateAddEmp" />






	<script type="text/javascript">	
	// Get the modal
	var modal = document.getElementById('myModal');
	
	// Get the button that opens the modal
	var btns = document.getElementsByClassName("btnArr");
	console.log(btns);
	
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];
	
	// When the user clicks the button, open the modal
	for (var i = 0; i < btns.length; i++) {
		btns[i].onclick = function() {
	    	modal.style.display = "block";
		}
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

	
	


</body>
</html>