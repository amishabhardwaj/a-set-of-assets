<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Send message</title>
</head>
<body bgcolor="lightgrey">
	<h1>Send message</h1>

	<form method="post" action="send">
		Enter Username :<input type="text" name="uname"> <br>
		Enter Message :<input type="text" name="message"> <br> <br>
		<input type="submit" value="Send">
	</form>


	<%
		ArrayList<String> list = (ArrayList<String>) session.getAttribute("list");
	pageContext.setAttribute("list", list);
//	System.out.println("from jsp " + list);
	%>
<h1>${list}</h1>
</body>
</html>