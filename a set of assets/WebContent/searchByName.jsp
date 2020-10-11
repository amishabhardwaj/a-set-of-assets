<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.hsbc.pojo.OverdueName"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search by name</title>
</head>
<body bgcolor="lightgrey">
	<h1>Search by name</h1>

	<form method="post" action="byname">
		Enter Name :<input type="text" name="name"> <br> <br>
		<input type="submit" value="Search">
	</form>

	<%
		ArrayList<OverdueName> list = (ArrayList<OverdueName>) session.getAttribute("list");
	pageContext.setAttribute("list", list);
	System.out.println("from jsp " + list);
	%>

	<table border=5>
		<tr>
			<th>1</th>
			<th>2</th>
			<th>3</th>
			<th>4</th>
			<th>5</th>
		</tr>

		<c:forEach items="${list}" var="obj">
			<tr>
				<td>${obj.transactionId1 }</td>
				<td>${obj.assetId}</td>
				<td>${obj.issueDate}</td>
				<td>${obj.borrowStatus}</td>
				<td>${obj.message}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>