<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@page import="com.hsbc.pojo.User"%>

<%
   
	User curruser=(User)session.getAttribute("currentUser");	
	String username=(String)curruser.getName();
	String email=(String) curruser.getEmail();
%>

<!DOCTYPE html>
<html>
<head>
<title>Messages</title>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
/* Split the screen in half */
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

footer {
	background-color: #e9e9e9;
	text-align: center;
	color: black;
	z-index: 22;
	left: 0;
	width: 100%;
	height: 7%;
	bottom: 0;
	position: fixed;
}

.split {
	height: 100%;
	width: 50%;
	position: absolute;
	z-index: 1;
	top: 5;
	overflow-x: hidden;
	padding-top: 20px;
}

/* Control the left side */
.left {
	left: 0;
	background-color: black;
	background-image: url("spacedot.gif");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	color: white;
	position: fixed;
}

/* Control the right side */
.right {
	right: 0;
	background-color: #f4f3f3;
}

.right::after {
	content: "";
	background-image: url("background.jpg");
	background-size: 70% 70%;
	background-position: center;
	background-repeat: no-repeat;
	opacity: 0.20;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	position: absolute;
	z-index: -1;
}

/* If you want the content centered horizontally and vertically */
.centered {
	position: relative;
	top: 25%;
	left: 35%;
	transform: translate(5%, -50%);
	text-align: left;
}

.centered1 {
	position: relative;
	top: 15%;
	left: 15%;
	transform: translate(5%, -50%);
	text-align: left;
}
/* Style the image inside the centered container, if needed */
.centered img {
	width: 150px;
	border-radius: 65%;
}

td {
	padding-left: 80px;
	padding-top: 5px;
	padding-bottom: 5px;
	padding-right: 60px;
}

ol {
	padding-left: 120px;
}

.topnav {
	overflow: hidden;
	background-color: #e9e9e9;
	z-index: 100;
	width: 100%;
	position: fixed;
}

.topnav a {
	float: left;
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #000000;
	color: white;
}

.topnav .search-container {
	float: right;
}

.topnav input[type=text] {
	padding: 6px;
	margin-top: 8px;
	font-size: 17px;
	border: none;
}

.topnav .search-container button {
	float: right;
	padding: 6px 10px;
	margin-top: 8px;
	margin-right: 16px;
	background: #ddd;
	font-size: 17px;
	border: none;
	cursor: pointer;
}

.topnav .search-container button:hover {
	background: #ccc;
}

@media screen and (max-width: 200px) {
	.topnav .search-container {
		float: none;
	}
	.topnav a, .topnav input[type=text], .topnav .search-container button {
		float: none;
		display: block;
		text-align: left;
		width: 100%;
		margin: 0;
		padding: 14px;
	}
	.topnav input[type=text] {
		border: 1px solid #ccc;
	}
	#box {
		background-color: lightgrey;
		width: 300px;
		padding: 50px;
		z-index: 200;
		color: white;
		box-sizing: border-box;
	}
}
</style>


</head>
<body>
	<div class="topnav">
		<a class="active" href="AdminHome.jsp"><b>Home</b></a>
  
  <a  href="AddNewAsset.jsp"><b>Add Assets</b></a>
  <a href="overdueTransactionManagement.jsp"><b>Over-due Assets</b></a>
  <a href="#"><b>Import User</b></a>
  <a href="#"><b>View Reports</b></a>
  <a href="" class="logoutbtn"><b>Logout<b></a> 


	</div>
	</div>
	<div class="split left">
		<div class="centered">
			<img src="face.png" alt="USER" style="left: 40%;">
		</div>
		<br> <br> <br> <br> <br> <br> <br>
		<br>
		<div class="left" align="left">
			<table class="lefttable">

				<tr>
					<td><ul>
							<li>Username</li>
						</ul></td>
					<td>:</td>
					<td><%=username%></td>
				</tr>

				<tr>
					<td><ul>
							<li>Email Id</li>
						</ul></td>
					<td>:</td>
					<td><%=email%></td>
				</tr>

			</table>
		</div>
	</div>
	<div class="split right">
		<br> <br> <br> <br> <br>
		<h1 align="center">Over Due Transaction Management</h1>
		<table align="center">
			<tr>
				<td><a href="searchByDate.jsp">Click here to view details
						by date</a></td>
			</tr>
			<tr>
				<td><a href="searchByName.jsp">Click here to view details
						by username</a></td>
			</tr>
			<tr>
				<td><a href="searchByCategory.jsp">Click here to view
						details by category</a></td>
			</tr>
			<tr>
				<td><a href="sendMessage.jsp">Click here to send a message</a></td>
			</tr>
			<br>
			<br>
		</table>

		<footer>
			<p>
				<b>Copyright</b>
			</p>
		</footer>
</body>
</html>