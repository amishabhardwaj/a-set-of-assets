<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.hsbc.pojo.OverdueName"%>
<%@page import="java.util.ArrayList"%>
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
	height: 1000px;
	background-color: #f4f3f3;
	overflow-x: hidden;
	overflow-y: scroll;
	text-align: justify;
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
.site-footer
{
  background-color:#26272b;
  padding:45px 0 20px;
  font-size:15px;
  line-height:24px;
  color:#737373;
}
.site-footer hr
{
  border-top-color:#bbb;
  opacity:0.5
}
.site-footer hr.small
{
  margin:20px 0
}
.site-footer h6
{
  color:#fff;
  font-size:16px;
  text-transform:uppercase;
  margin-top:5px;
  letter-spacing:2px
}
.site-footer a
{
  color:#737373;
}
.site-footer a:hover
{
  color:#3366cc;
  text-decoration:none;
}
.footer-links
{
  padding-left:0;
  list-style:none
}
.footer-links li
{
  display:block
}
.footer-links a
{
  color:#737373
}
.footer-links a:active,.footer-links a:focus,.footer-links a:hover
{
  color:#3366cc;
  text-decoration:none;
}
.footer-links.inline li
{
  display:inline-block
}
.site-footer .social-icons
{
  text-align:right
}
.site-footer .social-icons a
{
  width:40px;
  height:40px;
  line-height:40px;
  margin-left:6px;
  margin-right:0;
  border-radius:100%;
  background-color:#33353d
}
.copyright-text
{
  margin:0
}
@media (max-width:991px)
{
  .site-footer [class^=col-]
  {
    margin-bottom:30px
  }
}
@media (max-width:767px)
{
  .site-footer
  {
    padding-bottom:0
  }
  .site-footer .copyright-text,.site-footer .social-icons
  {
    text-align:center
  }
}
.social-icons
{
  padding-left:0;
  margin-bottom:0;
  list-style:none
}
.social-icons li
{
  display:inline-block;
  margin-bottom:4px
}
.social-icons li.title
{
  margin-right:15px;
  text-transform:uppercase;
  color:#96a2b2;
  font-weight:700;
  font-size:13px
}
.social-icons a{
  background-color:#eceeef;
  color:#818a91;
  font-size:16px;
  display:inline-block;
  line-height:44px;
  width:44px;
  height:44px;
  text-align:center;
  margin-right:8px;
  border-radius:100%;
  -webkit-transition:all .2s linear;
  -o-transition:all .2s linear;
  transition:all .2s linear
}
.social-icons a:active,.social-icons a:focus,.social-icons a:hover
{
  color:#fff;
  background-color:#29aafe
}
.social-icons.size-sm a
{
  line-height:34px;
  height:34px;
  width:34px;
  font-size:14px
}
.social-icons a.facebook:hover
{
  background-color:#3b5998
}
.social-icons a.twitter:hover
{
  background-color:#00aced
}
.social-icons a.linkedin:hover
{
  background-color:#007bb6
}
.social-icons a.dribbble:hover
{
  background-color:#ea4c89
}
@media (max-width:767px)
{
  .social-icons li.title
  {
    display:block;
    margin-right:0;
    font-weight:600
  }
}

</style>


</head>
<body>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
   if(session.getAttribute("userid")==null){
	   response.sendRedirect("index.jsp");
   }

%>
	<div class="topnav">
		<a href="AdminHome.jsp"><b>Home</b></a>
  
  <a  href="AddNewAsset.jsp"><b>Add Assets</b></a>
  <a class="active" href="overdueTransactionManagement.jsp"><b>Over-due Assets</b></a>
  <a href="ImportUser.jsp"><b>Import User</b></a>
  <a href="ViewReport.jsp"><b>View Reports</b></a>
  <a href="logout" class="logoutbtn"><b>Logout<b></a> 
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
		<h1 align="center">Please search by Username!</h1>

		<form method="post" action="byname" align="center">


			<table>
				<tr>
					<td>Enter Username</td>
					<td>:</td>
					<th><input type="text" name="name"></th>
				</tr>
				<br>
				<br>
			</table>
			<br> <br> <input type="submit" value="Search"> <br>
			<br>
		</form>
		<br> <br>

		<%
			ArrayList<OverdueName> list2 = (ArrayList<OverdueName>) session.getAttribute("list");
		pageContext.setAttribute("list2", list2);
//		System.out.println("from jsp " + list2);
		%>
 
		<table border=5 align="center">
			<c:forEach items="${list2}" var="obj2">
				<tr>
					<td>User Name</td>
					<th>${obj2.username }</th>
				</tr>
				<tr>
					<td>Name</td>
					<th>${obj2.name }</th>
				</tr>
				<tr>
					<td>Phone Number</td>
					<th>${obj2.phone }</th>
				</tr>
				<tr>
					<td>Email Id</td>
					<th>${obj2.email }</th>
				</tr>
				<tr>
					<td>Last Login Date</td>
					<th>${obj2.lastLogin }</th>
				</tr>
				<tr>
					<td>Asset Id</td>
					<th>${obj2.assetId }</th>
				</tr>
				<tr>
					<td>Issue Date</td>
					<th>${obj2.issueDate }</th>
				</tr>
				<tr>
					<td>due Date</td>
					<th>${obj2.dueDate }</th>
				</tr>
				<tr>
					<td>Return Date</td>
					<th>${obj2.returnDate }</th>
				</tr>
				<tr>
					<td>Ban Start Date</td>
					<th>${obj2.banStartDate }</th>
				</tr>
			</c:forEach>
		</table>
		
		<br> <br>
		<form align="center">
			<input type="button" value="Back to Home"
				onclick="location.href = 'AdminHome.jsp';" />
		</form>
		<footer>
			<p>
			<div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyright &copy; 2020 All Rights Reserved by A set of assets.
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
		</p>
		</footer>
</body>
</html>