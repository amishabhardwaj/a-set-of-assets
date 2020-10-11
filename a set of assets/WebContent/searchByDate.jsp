<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.hsbc.pojo.OverdueDate"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search by date</title>
</head>
<body bgcolor="lightgrey">
	<h1>Search by date</h1>

	<form method="post" action="bydate">
		Enter Date :<input type="date" name="date"> <br> <br>
		<input type="submit" value="Search">
	</form>

	<%
		ArrayList<OverdueDate> list = (ArrayList<OverdueDate>) session.getAttribute("list");
	pageContext.setAttribute("list", list);
//	System.out.println("from jsp " + list);
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