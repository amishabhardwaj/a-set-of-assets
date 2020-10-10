<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
</head>
<body>
	<%  HttpSession s = request.getSession();
		String question = (String) s.getAttribute("question");
		String answer = (String) s.getAttribute("answer");
		String passwordChange = (String) s.getAttribute("passwordChange");
		
		/* boolean displayMessageStatus = false;
		if(passwordChange.equals("successful")){
			displayMessageStatus = true;
		} */
		%>
	
	<!-- Form 1 -->
	<form method="post" action="forgotpassword">
		<label>Enter Username :</label>
		<input type="text" name="username"> <br> <br>
		<input type="submit" value="Get Question"> <br> <br>
	</form>
	
	<p> Question </p> <br> 
	<p> ${question}</p> <br>
	
	<!-- Form 2 -->
	<form method="post" action="resetpassword">
		Enter Answer :
		<input type="text" name="userEnteredAnswer"> <br><br>
		Enter New Password :
		<input type="text" name="newPassword"> <br><br>
		<input type="submit" value="Submit Answer">
		<input type="reset" value="Reset">
	</form>
	<!--
	<c:if test="${displayMessageStatus} }">
		<h2>Password Changed Successfully</h2>
	</c:if>
	  -->
	
	
</body>
</html>