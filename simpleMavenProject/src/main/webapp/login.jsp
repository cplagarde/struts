<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head></head>
<body>
	<h1>Employee Login </h1>




	<s:form action="login">
		<s:textfield name="username" label="Username" />
		<s:password name="password" label="Password" />
		<s:submit />
	</s:form>
     


<s:if test="hasActionErrors()">
   <div class="login">
      <s:actionerror/>
   </div>
</s:if>
     
     
        
</body>
</html>