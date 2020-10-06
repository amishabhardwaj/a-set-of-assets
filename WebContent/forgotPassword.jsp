<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
</head>
<body>
	<%  HttpSession s = request.getSession();
		String question = (String) s.getAttribute("question"); %>	
	<form method="post" action="">
		<label>Enter Username :</label>
		<input type="text" name="username"> <br> <br>
		<input type="submit" value="Get Question"> <br> <br>
	</form>
	
	<p> Question </p> <br> 
	<p> ${question}</p>
	
	<h2> Enter Answer </h2> <br> <br>
	<form method="post" action="resetpassword">
		<input type="text"> <br>
	</form>
</body>
</html>