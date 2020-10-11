<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.hsbc.pojo.OverdueCategory"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search by Category</title>
</head>
<body bgcolor="lightgrey">
	<h1>Search by Category</h1>

	<form method="post" action="bycategory">
		Enter Category :<input type="text" name="category"> <br>
		<br> <input type="submit" value="Search">
	</form>

	<%
		ArrayList<OverdueCategory> list = (ArrayList<OverdueCategory>) session.getAttribute("category");
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
				<td>${obj.assetId1}</td>
				<td>${obj.issueDate}</td>
				<td>${obj.borrowStatus}</td>
				<td>${obj.message}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>