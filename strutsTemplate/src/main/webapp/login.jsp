<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<html>
<head>
<sj:head/>
<sb:head/>

<title>Login</title>

<style>
ul, menu, dir {
	display:flex;
	padding: 0;

}
li {
	display: inline-block;
}

</style>

</head>
<body>

<div class="container" style="padding: 100px 0;">
	<div class="jumbotron text-center">

		<h1>Employee Login </h1>
	
		<s:form theme="bootstrap" action="login">
			<s:textfield name="username" label="Username" />
			<s:password name="password" label="Password" />
			<s:submit />
		</s:form>
	
		
		<s:if test="hasActionErrors()">
		   <div class="login">
		      <s:actionerror/>
		   </div>
		</s:if>
	</div>
</div>
        
</body>
</html>