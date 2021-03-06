<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<html>
<head>
<sj:head/>
<sb:head/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee List</title>


<!--**************************************************************** CSS ****************************************************************-->
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

/* hide the divs that are part of the button */
.selectorField,
.dataField {
	display: none;
}

/* Bootstap table */
.table-striped>tbody>tr:nth-child(odd) {
	background-color: #b7caff;
}

/* Modal labels */
label, label.label, .label {
	color: black;
}

/* Modal input fields */
.modalfields {
	border-radius: 5px;
}
.stateselector {
	border-radius: 5px;
}

/* Navigation Bar */
ul.navBar {
    /* position, top, and width, make it fixed on top of page*/
    position: fixed;
    top: 0;
    width: 100%;
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

.navBar {
	min-height: 20px;
	max-height: 50px;
}

li.navBar {
    float: left;
}

li a.navBar {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/* change the link color to #111 (black) on hover */
li a:hover.navBar {
    background-color: #111;
}

/*active class to the current link to let user know where they are*/
.active {
    background-color: #4a6bc4;
}

/* push start of page below nav bar */
body{
	padding-top: 40px;
}



</style>



<!--**************************************************************** JavaScript Functions ****************************************************************-->
<script type="text/javascript">
	var counter = 0;
	function increment(){
		counter++;
		return counter;
	}	

// 	create an individual id for each button
	function changeModalButtonId() {
		var element = document.getElementById('myBtn');
			element.id = element.id + increment();
	}
	
// 	replace placeholders for each part of modal textfield with respective employee data (utilizing DOM)
	function updateModal(id) {
		var modalFields = document.getElementsByClassName("modalFields");
		var modalSelectors = document.getElementsByClassName("stateSelector");
		var options = modalSelectors[0].children;
		var btn = document.getElementById(id);
		var numOfFields = btn.getElementsByClassName("dataField");
		var numOfSelectors = btn.getElementsByClassName("selectorField");
		
		for (var i = 0; i < numOfFields.length; i++){
			modalFields[i].value = numOfFields[i].textContent.trim();
		}
		for(var j = 0; j < options.length; j++){
			if (options[j].value === numOfSelectors[0].textContent.trim()) {
				options[j].selected = numOfSelectors[0].textContent.trim();
			}
		}		
	}
	
// 	replace value of modal to default if modal is cancelled
	function cancelModal() {
		var defaultTable = document.getElementsByClassName("wwFormTable");
		table[0].children[0].innerHTML = defaultModal;
		
		// if action error, clean action error on cancel
		var fieldErrorMsg = document.getElementsByClassName("errorMessage");
		if (fieldErrorMsg[0] != null) {
			while (fieldErrorMsg[0].hasChildNodes()) {
		        fieldErrorMsg[0].removeChild(fieldErrorMsg[0].firstChild);
		    }
		}		
	}

//	essenstially an onclick action
	function triggerBtn() {
		var btnId = document.getElementById("previousBtn").textContent.trim();
		var btn = document.getElementById(btnId);
		btn.click();
	}


</script>

</head>



<!--**************************************************************** Body ****************************************************************-->
<body>
	<div class="container text-center">
		<h2>
			Welcome
			<s:property value="username"></s:property>
		</h2>
		
		<br>

		<h4><b>Employee Editor</b></h4>
		<br>
	</div>
	
	
	<!--**************************************************************** The Modal ****************************************************************-->
	<div id="myModal" class="modal">
	
		<!-- Modal content -->
		<div class="modal-content">
		    <span class="close">&times;</span>
			<s:form method="post" action="editEmp">
				<s:textfield type="text" class="modalFields" name="firstName" label="First Name" value="" />
				<s:textfield type="text" class="modalFields" name="lastName" label="Last Name" value="" />
				<s:textfield type="text" class="modalFields" name="address" label="Address" value="" />
				<s:textfield type="text" class="modalFields" name="city" label="City" value="" />
				<s:select type="text" class="stateSelector" label="State" headerKey="-1" headerValue="" name="state" list= "#{
					'AL':'AL', 'AK':'AK', 'AR':'AR', 'AZ':'AZ', 'CA':'CA', 'CO':'CO', 'CT':'CT', 'DE':'DE', 'FL':'FL', 'GA':'GA',
					'HI':'HI', 'IA':'IA', 'ID':'ID', 'IL':'IL', 'IN':'IN', 'KS':'KS', 'KY':'KY', 'LA':'LA',	'MA':'MA', 'MD':'MD',
					'ME':'ME', 'MI':'MI', 'MN':'MN', 'MO':'MO', 'MS':'MS', 'MT':'MT', 'NC':'NC', 'ND':'ND', 'NE':'NE', 'NH':'NH',
					'NJ':'NJ', 'NM':'NM', 'NV':'NV', 'NY':'NY', 'OH':'OH', 'OK':'OK', 'OR':'OR', 'PA':'PA', 'RI':'RI', 'SC':'SC',
					'SD':'SD', 'TN':'TN', 'TX':'TX', 'UT':'UT', 'VA':'VA', 'VT':'VT', 'WA':'WA', 'WI':'WI', 'WV':'WV', 'WY':'WY' }" />
				<s:textfield type="text" class="modalFields" name="zip" label="Zip/Postal Code" value="" />
				<s:textfield type="text" class="modalFields" name="cellPhone" label="Cell Phone" value="" />
				<s:textfield type="text" class="modalFields" name="homePhone" label="Home Phone" value="" />
				<s:textfield type="text" class="modalFields" name="email" label="Email" value="" />
				<s:textfield type="text" class="modalFields" name="id" label ="ID" value="" />
	
			<!-- error action that points to bottom error -->
			<s:if test="hasActionErrors()">
				<s:actionerror/>
			</s:if>
			
			<br>
			
			<s:submit class="btn" value="Add/Update Employee"></s:submit>
			</s:form>	
			<!-- cancel button -->
			
			<input type="submit" class="cancelBtn Btn" style="position: absolute; top: 285px; left: 260px;" value="Cancel" name="Cancel" />

		</div>
	</div>
	<!-- done with modal box -->



	<!--**************************************************************** Auto Generated Table ****************************************************************-->
	<table class="table table-striped table-bordered table-condensed">
		<s:iterator value="employees">
			<s:url var="eEmail">
				<s:param name="email">
					<s:property value="email" />
				</s:param>
			</s:url>
		<tr>	
			<!-- button that accesses employee data and creates it on document -->
			<td><button class="btnArr btn" id="myBtn"> 
				Edit
				<br>				
				
				<div class="dataField">
					<s:property value="firstName" />
				</div>
				<div class="dataField">
					<s:property value="lastName" />
				</div>
				<div class="dataField">
					<s:property value="address" />
				</div>
				<div class="dataField">
					<s:property value="city" />
				</div>
				<div class="selectorField">
					<s:property value="state" />
				</div>
				<div class="dataField">
					<s:property value="zip" />
				</div>
				<div class="dataField">
					<s:property value="cellPhone" />
				</div>
				<div class="dataField">
					<s:property  value="homePhone" />
				</div>
				<div class="dataField">
					<s:property value="email" />
				</div>
				<div class="dataField">
					<s:property value="id" />
				</div>
				
			</button>

			<script type="text/javascript">
				changeModalButtonId();
			</script>
			
			</td>
			<td><s:property value="firstName" /> <s:property value="lastName" /></td>
			<td><s:property value="email" /></td>
		</tr>
		</s:iterator>
		
	</table>

	<button class="btn" id="addBtn">Add Employee</button>


	<!--**************************************************************** Inline JS ****************************************************************-->
	<script type="text/javascript">	
	// Get the modal
	var modal = document.getElementById('myModal');
	
	// Get the button that opens the modal
	var btns = document.getElementsByClassName("btnArr");
	
	// Get the <span> & <input> element that closes the modal
	var span = document.getElementsByClassName("close")[0];
	var cancelBtn = document.getElementsByClassName("cancelBtn")[0];

	// create a default version of the modal on a global scale
	var defaultTable = document.getElementsByClassName("wwFormTable");
	var defaultModal = defaultTable[0].children[0].innerHTML;

	// When the user clicks the edit button, open the modal for employee clicked
	// also stores a previous button id for cancel utilization
	for (var i = 0; i < btns.length; i++) {
		btns[i].onclick = function() {
			table = document.getElementsByClassName("wwFormTable");
			table[0].children[0].innerHTML = "<tr><input type='text' style='display: none;' name='prvBtn' id='prvBtn' value='"+this.id+"'></tr>" + table[0].innerHTML;
	    	updateModal(this.id);
			modal.style.display = "block";
		}
	}
	
	// When the user clicks the Add Employee button, open empty modal
	var addBtn = document.getElementById("addBtn");
	addBtn.onclick = function() {
		// get default table (empty modal)
		table = document.getElementsByClassName("wwFormTable");
		// set state value to empty
		var modalSelectors = document.getElementsByClassName("stateSelector");
		var options = modalSelectors[0].children;
		options[0].selected = true;
		// display modal
		modal.style.display = "block";
	}
	
	// When the user clicks on <span> (x) or cancelBtn, close the modal
	span.onclick = function() {
	    modal.style.display = "none";
	    cancelModal();
	}
	cancelBtn.onclick = function() {
		modal.style.display = "none";
		cancelModal();
	}
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	        cancelModal();
	    }
	}
	
	// Handle ESC key (key code 27)
	document.addEventListener('keyup', function(e) {
	    if (e.keyCode == 27) {
	        modal.style.display = "none";
	        cancelModal();
	    }
	});
	</script>

	
	
	<!--*********************************************************** errors and logout button ***********************************************************-->
	<s:if test="hasActionErrors()">
  			<div class="EmployeeEditedSave">
   			<div id="previousBtn" style="display: none;">
   				<s:property value="prvBtn" />			
   			</div>
     		</div>
     		<script type="text/javascript">
   			triggerBtn();
   		</script>
	</s:if>
	

	<s:form action="logout">
		<s:submit class="btn" value="Log Out" />
	</s:form>
	
	
	
<!-- Navigation Bar-->
<div>
	<ul class="navBar">
		<li class="navBar"><a class="navBar" href="#" target="_self">Home</a></li>
		<li style="float: right" class="navBar active"><a class="navBar" href="./" target="_self">
			Log Out</a></li>
	</ul>
</div>


</body>
</html>