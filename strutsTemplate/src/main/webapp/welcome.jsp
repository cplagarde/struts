<%-- <%@ taglib prefix="s" uri="/struts-tags" %> --%>
<%-- <%--  --%>
<%-- This is the welcome page. It is where the user lands after logging in.  --%>
<%-- In the head page below, you will find the links to the CDN's for external resources used this project. --%>
<%-- You will need them to load Bootstrap, jQuery, validation, and masked input. You will want them all. --%>


<%-- This page uses bootstrap columns for the grid system, if you don't know what that is, lookup the documentation online.  --%>
<%-- It's very helpful. --%>

<%-- It uses the Struts iterator to iterate through the list of employees, and calls the struts "status" to get the "index" --%>

<%-- The link for the "Add Employee" button calls the loadModal function with blank fields, and provides a "-1" index. --%>
<%-- Existing employees load the modal with their index, and the field is hidden from the user.  --%>

<%-- The backend of the application has logic to "add" if the index is -1 (assigning a new index afterwards) or does --%>
<%-- an "update" with a non -1 index. This is how we can perform 2 separate operations from the same modal window. --%>

<%-- At the very bottom, there's a <script> that tells the validation plugin which rules to enforce on which fields. --%>

<%-- Also, since the masked input plugin doesn't strip the formatting when sending over to the DB, I ran a regex in the --%>
<%-- Employee class to clean out spaces and special characters from phone numbers.   --%>


<%-- Developed by Ellison Kemp Travis May 2017 --%>
<%--  --%> --%>
<!-- <head> -->
<!--   <title>Welcome</title> -->
<!--   <meta charset="utf-8"> -->
<!--   <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!--   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-formhelpers/2.3.0/css/bootstrap-formhelpers.min.css"> -->
<%--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> --%>
<%--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> --%>
<%--   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-formhelpers/2.3.0/js/bootstrap-formhelpers.js"></script> --%>
<%--   <script src="https://cdn.jsdelivr.net/bootstrap.formhelpers/1.8.2/js/bootstrap-formhelpers-phone.js"></script> --%>
<%--   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.js"></script> --%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js"></script> --%>
<%--   <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script> --%>
<%--   <script> --%>
// /*  $(window).on('load', function() {
// 	  var texts = $(".emails").map(function() {
// 		    return $(this).text();
// 		});
// 	  var emailarray = ( texts ).toArray();
// 	   alert(emailarray);
//   }); */
<%--   </script> --%>
<%--   <%-- The script below is jQuery that adds "rules" to our validation plugin that we enforce at the bottom of the page. --%> --%>
<%--   <script type="text/javascript"> --%>
// 	$.validator.addMethod("alphanumeric", function(value, element) {
//         return this.optional(element) || /^[a-z0-9\-\s]+$/i.test(value);
//     }, "Field must be alpha numeric.");
	
// 	$.validator.addMethod("alpha", function(value, element) {
//         return this.optional(element) || /^[a-zA-Z]+$/.test(value);
//     }, "Field must contain letters only");
	
// 	$.validator.addMethod("numeric", function(value, element) {
//         return this.optional(element) || /^[0-9]+$/.test(value);
//     }, "Field must contain numbers only");
	
// 	$.validator.addMethod("address", function(value, element) {
//         return this.optional(element) || /^[a-z0-9\-\s\.]+$/i.test(value);
//     }, "Field must be a valid address.");
// 	$.validator.addMethod("mailCheck", function(value, element){
// 		var texts = $(".emails").map(function() {
// 		    return $(this).text();
// 		});
// 	    var emailarray = ( texts ).toArray();
// 	    if($.inArray(value, emailarray) != -1 && $("#index").val() == -1)  {
// 	        return false;  // FAIL validation when REGEX matches
// 	    } else {
// 	        return true;   // PASS validation otherwise
// 	    };
// 	}, "Email must be unique, please try another.");
<%--   </script> --%>
<%--   <%-- The script below defines our loadModal function which is used to either open  --%>
<%--   up a "New Employee" form or to pre populate the form with the Employee's information when you click on their name.  --%> --%>
<%--   <script type="text/JavaScript"> --%>
// 	 //document ready
// 	   var loadModal = function( fName , lName , email , address , city , state , zip , cPhone , hPhone , empIndex ){
// 	       var firstname = fName;
// 	       var lastname = lName;
// 	       var email = email;
// 	       var address = address;
// 	       var city = city;
// 	       var state = state;
// 	       var zip = zip;
// 	       var cellphone = cPhone;
// 	       var homephone = hPhone;
// 	       var index = empIndex;
	       
// 	       $('#firstName').val(firstname);
// 	       $('#lastName').val(lastname);
// 	       $('#email').val(email);
// 	       $('#address').val(address);
// 	       $('#city').val(city);
// 	       $('#state').val(state);
// 	       $('#zip').val(zip);
// 	       $('#cellPhone').val(cellphone);
// 	       $('#homePhone').val(homephone);
// 	       $('#index').val(index);
	       
// 	       $("#cellPhone").mask("(999) 999-9999");
// 	       $("#homePhone").mask("(999) 999-9999");
	       
// 	       $('#myModal').modal('show');
// 	   }
<%--   </script> --%>
<%--   <%-- This script detects errors from the backend when someone goes to create a new employee.  --%>
<%--   This would happen if they use an existing email address if registering a new user. This will load the  --%>
<%--   modal with the error message and populate the information they entered so they don't have to re enter it--%> --%>
<%--   <script type="text/javascript"> --%>
//  	$(document).ready(function(){
//  	   $('#loginError').hide();
// 	   if ($("#error").text().length > 0) {
// 	     $('#loginError').show();
// 	     var errortext = $("#error").text();
// 	     if (~errortext.indexOf("user")) {
// 	     loadModal("<s:property value = "firstName"/>" , "<s:property value = "lastName"/>" , "<s:property value = "email"/>" , "<s:property value = "address"/>" , "<s:property value = "city"/>" , "<s:property value = "state"/>" , "<s:property value = "zip"/>" , "<s:property value = "cellPhone"/>" , "<s:property value = "homePhone"/>" , "<s:property value = "index"/>");
// 	     $('#myModal').on('hidden.bs.modal', function () {
// 	    	  $("#error").empty();
// 	    	});
// 	     } else {
// 	     loadModal("<s:property value = "firstName"/>" , "<s:property value = "lastName"/>" , "<s:property value = "email"/>" , "<s:property value = "address"/>" , "<s:property value = "city"/>" , "<s:property value = "state"/>" , "<s:property value = "zip"/>" , "<s:property value = "cellPhone"/>" , "<s:property value = "homePhone"/>" , "-1");	 
// 	     $('#myModal').on('hidden.bs.modal', function () {
// 	    	  $("#error").empty();
// 	    	});
// 	     }
// 	   }  
// 	 });
<%--   </script> --%>
<%--   <style> --%>
/*  	#loginError , #aMessage { */
/*  		margin-top:20px; */
/*  	} */
/*  	#error , #aMessage { */
/*  		text-align:center; */
/*  	} */
/*  	.errorMessage , .actionMessage { */
/*  		list-style:none; */
/*  		list-style-type:none; */
/*  		font-weight:bold; */
/*  		vertical-align: middle; */
/*  		text-decoration:none; */
/*  		margin-left: -25px; */
/*  	} */
 	
/*  	#editBtn { */
/*  		float:right; */
/*  	} */
/*  	.panel-primary { */
/*  		box-shadow: 0px 0px 5px 2px  #85a8ff; */
/*  	} */
/*  	body { */
/*  		background-color:   #e1e9ed; */
/*  	} */
/*  	#deleteBtn { */
/*  		float:right; */
/*  	} */
/*  	#submitBtn , #closeBtn { */
/*  		float:left; */
/*  	} */
<%--   </style> --%>
<!-- </head> -->
<!--    <nav class="navbar navbar-default"> -->
<!--   <div class="container-fluid"> -->
<!--     <div class="navbar-header"> -->
<!--       <a class="navbar-brand" href="#">Struts Challenge</a> -->
<!--     </div> -->
<!--     <ul class="nav navbar-nav navbar-right"> -->
<%--       <li><a href="<s:url action="logout"/>"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li> --%>
<!--     </ul> -->
<!--   </div> -->
<!-- </nav>  -->
<!-- </head> -->
<!-- <html> -->
<!--   <body> -->
<!-- <div class="container"> -->
<!-- <div class="col-md-3"></div> -->
<!-- 	<div class="col-md-6"> -->
<!-- 		<div class="panel panel-primary"> -->
<!-- 		<div class="panel-body"> -->
<%-- 				<s:if test="hasActionMessages()"> --%>
<!--           		<div id="aMessage"> -->
<!--           			<div class ="alert alert-success"> -->
<%-- 		    		 	<p><s:actionmessage/></p> --%>
<!-- 		    		 </div> -->
<!-- 		   		</div> -->
<%-- 		</s:if> --%>
<!-- 		<a href="#" style="margin-bottom:10px;" onclick="loadModal('' , '' , '' , '' , '' , '' , '' , '' , '', '-1')" class="btn btn-success" role="button">Add New Employee</a> -->
<%-- 		<a href="<s:url action="loadlogins"/>" style="margin-bottom:10px;" class="btn btn-primary" role="button" id="editBtn">Edit Employee Login</a> --%>
<!-- 		<table class="table table-bordered table-striped"> -->
<!-- 		  <thead> -->
<!-- 		    <tr> -->
<!-- 			    <td>Name</td> -->
<!-- 			    <td>Email</td> -->
<!-- 			</tr> -->
<!-- 		  </thead> -->
<!-- 		  <tbody> -->
<%-- 		<s:iterator value="employees" status="employeeStatus"> --%>
<!-- 			<tr> -->
<!-- 				<td> -->
<%-- 			    	<a href="#" onclick="loadModal('<s:property  value = "firstName"/>' , '<s:property  value = "lastName"/>' , '<s:property  value = "email"/>' , '<s:property  value = "address"/>' , '<s:property  value = "city"/>' , '<s:property  value = "state"/>' , '<s:property  value = "zip"/>' , '<s:property  value = "cellPhone"/>' , '<s:property  value = "homePhone"/>', '<s:property  value = "%{#employeeStatus.index}"/>')"  ><s:property  value = "firstName"/> <s:property  value = "lastName"/></a> --%>
<!-- 			    </td> -->
<!-- 			    <td class="emails"> -->
<%-- 			    	<s:property  value = "email"/> --%>
<!-- 			    </td> -->
<!-- 		    </tr> -->
<%-- 		</s:iterator> --%>
<!-- 		 </tbody> -->
<!-- 		</table> -->
<!-- 		</div> -->
<!-- 	<div class="col-md-3"></div> -->
<!--    <!-- Modal --> -->
<!--   <div class="modal fade" id="myModal" role="dialog"> -->
<!--     <div class="modal-dialog modal-md"> -->
<!--       <div class="modal-content"> -->
<!--         <div class="modal-header"> -->
<!--           <button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!--           <h4 class="modal-title">Add/Edit Employee</h4> -->
<%--           <s:if test="hasActionErrors()"> --%>
<!--           		<div id="error"> -->
<!--           			<div class ="alert alert-danger"> -->
<%-- 		    		 	<p><s:actionerror/></p> --%>
<!-- 		    		 </div> -->
<!-- 		   		</div> -->
<%-- 		  </s:if> --%>
<!--         </div> -->
<!--         <div class="modal-body"> -->
<%--            <s:form action="saveemployee" method="post" id="modalForm"> --%>
<!--            <div class="form-horizontal"> -->
<!-- 			  <div class="form-group"> -->
<!-- 			    <label class="control-label col-sm-4" for="firstName">First Name:</label> -->
<!-- 			    <div class="col-sm-6"> -->
<!-- 			      <input type="text" class="form-control" id="firstName" name="firstName" placeholder="John"> -->
<!-- 			    </div> -->
<!-- 			  </div> -->
<!-- 			  <div class="form-group"> -->
<!-- 			    <label class="control-label col-sm-4" for="last_name">Last Name:</label> -->
<!-- 			    <div class="col-sm-6"> -->
<!-- 			      <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Smith"> -->
<!-- 			    </div> -->
<!-- 			  </div> -->
<!-- 			  <div class="form-group"> -->
<!-- 			    <label class="control-label col-sm-4" for="email">Email:</label> -->
<!-- 			    <div class="col-sm-6"> -->
<!-- 			      <input type="text" class="form-control" name="email" id="email" placeholder="jsmith@mail.com"> -->
<!-- 			    </div> -->
<!-- 			  </div> -->
<!-- 			  <div class="form-group"> -->
<!-- 			    <label class="control-label col-sm-4" for="address">Address:</label> -->
<!-- 			    <div class="col-sm-6"> -->
<!-- 			      <input type="text" class="form-control" name="address" id="address" placeholder="123 Main St."> -->
<!-- 			    </div> -->
<!-- 			  </div> -->
<!-- 			  <div class="form-group"> -->
<!-- 			    <label class="control-label col-sm-4" for="city">City:</label> -->
<!-- 			    <div class="col-sm-6"> -->
<!-- 			      <input type="text" class="form-control" name="city" id="city" placeholder="Baton Rouge"> -->
<!-- 			    </div> -->
<!-- 			  </div> -->
<!-- 			  <div class="form-group"> -->
<!-- 			    <label class="control-label col-sm-4" for="state">State:</label> -->
<!-- 			    <div class="col-sm-6"> -->
<%-- 			      <select class="form-control bfh-states" data-country="US" data-state="LA" name="state" id="state"></select> --%>
<!-- 			    </div> -->
<!-- 			  </div> -->
<!-- 			  <div class="form-group"> -->
<!-- 			    <label class="control-label col-sm-4" for="zip">ZIP:</label> -->
<!-- 			    <div class="col-sm-6"> -->
<!-- 			      <input type="text" class="form-control" id="zip" name="zip" placeholder="70802"> -->
<!-- 			    </div> -->
<!-- 			  </div> -->
<!-- 			  <div class="form-group"> -->
<!-- 			    <label class="control-label col-sm-4" for="cell_phone">Cell Phone:</label> -->
<!-- 			    <div class="col-sm-6"> -->
<!-- 			      <input type="text" id="cellPhone" name="cellPhone" class="form-control" > -->
<!-- 			    </div> -->
<!-- 			  </div> -->
<!-- 			  <div class="form-group"> -->
<!-- 			    <label class="control-label col-sm-4" for="home_phone">Home Phone:</label> -->
<!-- 			    <div class="col-sm-6"> -->
<!-- 			      <input type="text" id="homePhone" name="homePhone" class="form-control" > -->
<!-- 			    </div> -->
<!-- 			  </div> -->
<!-- 			  <div class="form-group"> -->
<!-- 			    <div class="col-sm-10"> -->
<!-- 			      <input type="hidden" class="form-control" name="index" id="index" placeholder=""> -->
<!-- 			    </div> -->
<!-- 			  </div> -->
			
<!--         </div> -->
<!--         <div class="modal-footer"> -->
<!--         	<button type="submit" id="submitBtn" class="btn btn-primary">Save</button> -->
<!--         	<button type="submit" id="deleteBtn" formmethod="post" formaction="deleteemployee.action" class="btn btn-danger">Delete Employee</button> -->
<!--         	<button type="button" id="closeBtn" class="btn btn-default" data-dismiss="modal">Close</button> -->
<!--         </div> -->
<%--         </s:form> --%>
<!--       </div> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!--   </div> -->
<!--   </div> -->
<!-- </div> -->
<!--   </body> -->
<%-- 	<script> --%>
// 	$("#modalForm").validate({
// 		  rules: {
// 			    firstName: {
// 			      required: true,
// 			      minlength: 2,
// 			      maxlength: 35,
// 			      alpha:true
// 			    },
// 				lastName: {
// 				    required: true,
// 				    minlength: 2,
// 				    maxlength: 35,
// 				    alpha: true
// 				  },
// 				address: {
// 	  			    required: true,
// 				    minlength: 10,
// 				    maxlength: 50,
// 				    address: true
// 				  },
// 				city: {
// 				    required: true,
// 				    minlength: 2,
// 				    maxlength: 35,
// 				    address: true
// 				  },
// 				state: {
// 		  		    required: true,
// 				  },
//     		    zip: {
// 	  			    required: true,
// 				    minlength: 5,
// 				    maxlength: 8,
// 				    numeric: true
// 				  },
// 				cellPhone: {
// 		  		    required: true,
// 				    minlength: 10,
// 				    maxlength: 14,
// 				    phoneUS: true
// 				  },
// 				homePhone: {
// 		  		    required: true,
// 				    minlength: 10,
// 				    maxlength: 14,
// 				    phoneUS: true
// 				  },
// 			  email: {
// 	  			    required: true,
// 				    minlength: 10,
// 				    maxlength: 50,
// 				    email: true,
// 				  },
// 		  }
// 	});
<%-- 	</script> --%>
<!-- </html> -->



