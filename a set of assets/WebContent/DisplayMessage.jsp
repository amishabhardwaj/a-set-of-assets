<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Message</title>
</head>
<body bgcolor="lightgrey">
	<h1>Display Message</h1>

	<form method="post" action="display">
		Enter Userame :<input type="text" name="uname"> <br> <br>
		Enter password :<input type="password" name="password"> <br> <br>
		<input type="submit" value="Show">
	</form>

	<%
		ArrayList<String> list = (ArrayList<String>) session.getAttribute("list");
	pageContext.setAttribute("list", list);
	System.out.println("from jsp " + list);
	%>

	<h1>${list}</h1>	

</body>
</html>