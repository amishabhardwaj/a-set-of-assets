<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.List,java.util.List,java.io.*,java.util.*,com.hsbc.dao.AssetDao, com.hsbc.pojo.Asset"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.hsbc.pojo.User" %>//folder k name change karlena.
<%
	
	User curruser=(User)session.getAttribute("currentUser");	
	String username=(String)curruser.getUserName();
	int empid=curruser.getUserId();
	String name=(String)curruser.getName();
	String email=(String) curruser.getEmail();
	String telephone=(String)curruser.getPhoneNumber();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assets Check</title>
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
  background-color: black;/*#e9eeed*/
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
/* If you want the content centered horizontally and vertically */
.centered {
  position: relative;
  top: 25%;
  left: 35%;
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
  width:100%;
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
<script>
</script>
<div class="topnav">
 <a class="active" href="">Home</a>
  <a href="borrowAssets.jsp">Borrow</a>
  <a href="userReturn.jsp">Return</a>
  <a href="userMessage.jsp">Messages</a>
  <div class="search-container">
    <form action=""><!--
      <input type="text" placeholder="Search.." name="search">
      <input type="submit" name="Search" value="Submit">-->
      <a href="">Logout</a>
    </form>
  </div>
</div>
<div class="split left">
  <div class="centered">
    <img src="users.jpg" alt="USER" style="left: 40%;">
  </div>
  <br><br><br><br><br>
  <table class="left" align="left">
    <tr>
  		<td><ul><li>User Name</li></ul></td>
  		<td>:</td>
  		<td><%=username%></td>
  	</tr>
  	<tr>
  		<td><ul><li>Employee ID</li></ul></td>
  		<td>:</td>
  		<td><%=empid%></td>
  	</tr>
  	<tr>
  		<td><ul><li>Name</li></ul></td>
  		<td>:</td>
  		<td><%=name%></td>
  	</tr>
  	<tr>
  		<td><ul><li>Telephone</li></ul></td>
  		<td>:</td>
  		<td><%=telephone%></td>
  	</tr>
 	<tr>
  		<td><ul><li>Email</li></ul></td>
  		<td>:</td>
  		<td><%=email%></td>
  	</tr>

         
    </table>
</div>
<div class="split right">
  <br><br><br><br><br>
    <h2 style="text-shadow: 4px 4px 2px #A0A0A0" align="center">Assets Available</h2><br>
    <p align="center">You can choose from the variety of assests available <br>exclusively for your comfort at a single click..</p><hr><br>
<%
// AssetDao dao=new AssetDao();
int userid = (Integer)session.getAttribute("userid");
// ArrayList<Asset> assetList= (ArrayList<Asset>)dao.getLendableAssets(userid);
ArrayList<Asset> assetList= (ArrayList<Asset>) session.getAttribute("assetsAvailable");
pageContext.setAttribute("asset",assetList);
System.out.println(assetList); // Debugging purpose
%>
<table border=5>
		<tr>
			<th>Asset ID</th>
			<th>Category</th>
			<th>Sub-Category</th>
			<th>Feature Description</th>
			<th>Date Added</th>
			<th>Available</th>
			<th>Borrow</th>
		</tr>
		<c:forEach var="a" items="${asset}">
		<tr>
				<td>${a.assetId}</td>
				<td>${a.category}</td>
				<td>${a.subcategory}</td>
				<td>${a.featureDescription}</td>
				<td>${a.dateAdded}</td>
				<td>${a.isAvailable}</td>
				<td>
					<form method="post" action="borrowAssetServlet">
					<input type="checkbox" name="assetIdToBorrow" value="${a.assetId}">
					<input type="submit" value="Borrow">
					</form>	
				</td>
				<!--<td><a href="borrowAssetServlet?borrowing=yes&assetIdToBorrow=${a.assetId}">Borrow</a></td>  -->	 
		</tr>
		</c:forEach>
		</table>
		<hr>
</div>
<footer>
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
</footer>
</body>
</html>