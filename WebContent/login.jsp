<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Login Form</h2>
	<form method="post" action="login">
		<label>Username :</label>
		<input type="text" name="username"> <br> <br>
		
		<label>Password :</label>
		<input type="password" name="password"> <br> <br>
		
		<input type="submit" name="Login">
	</form>
	
	<a href="forgotPassword.jsp">Forgot Password?</a>
</body>
</html>