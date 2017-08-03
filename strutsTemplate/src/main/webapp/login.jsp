<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<style>
body {
}
.alert-danger li, .alert-success li {
	list-style: none;
}
.ui-dialog-titlebar-close {
    visibility: hidden;
}
.ui-dialog-title {
    text-align: left;
}
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}
</style>
<body>
	
	<s:form action="login" method="post">
		<div align="center">
			<s:if test="hasActionErrors()">
				<div class="alert alert-danger">
					<s:actionerror escape="false" />
				</div>
			</s:if>
			<s:if test="hasActionMessages()">
				<div class="alert alert-success">
					<s:actionmessage escape="false" />
				</div>
			</s:if>
			<table align="center">
				<tr>
					<td><b>Email:</b></td>
					<td><input type="text" name="email" class="form-control" /><p></td>
				</tr>
				<tr>
					<td><b>Password:</b>&nbsp;&nbsp;</td>
					<td><input type="password" name="password" class="form-control" /></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:center;">
						<br/><br/>
						<input class="btn btn-primary" type="submit" value="Login" />
					</td>
				</tr>
			</table>
		</div>
	</s:form>

</body>
</html>