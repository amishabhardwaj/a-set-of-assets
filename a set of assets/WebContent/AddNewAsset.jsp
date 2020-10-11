<%@page import="java.util.Date"%>
<%@page import="com.hsbc.pojo.User"%>
<%@page import="java.util.*"%>
<%@page import="com.hsbc.dao.CategoryDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--a set of assets/WebContent/WEB-INF/UserHomepage.html-->
<%@page import="java.util.ArrayList"%>
<%
	List<String> listOfAssets = new ArrayList<String>();
//System.out.println("size of array list after creating: " + size);
CategoryDao dao = new CategoryDao();
listOfAssets = dao.showCategories();
int size = listOfAssets.size();
%>
<!DOCTYPE html>
<html>
<head>
	<title>Add Assets</title>
<style>
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
#menu {
  background:black;
  color: #eee;
  height: 35px;
  border-bottom: 4px solid #eeeded;
  width:110px;
}

#menu ul,
#menu li {
  margin: 0 0;
  padding: 0 0;
 
  list-style: none
}

#menu ul {
  height: 35px
  
}

#menu li {
  float: left;
  display: inline;
  position: relative;
  font: bold 12px Arial;
  text-shadow: 0 -1px 0 #000;
  border-right: 1px solid #444;
  border-left: 1px solid #111;
  text-transform: uppercase
}

#menu li:first-child {
  border-left: none
}

#menu a {
  display: block;
  
  line-height: 35px;
  padding: 0 14px;
  text-decoration: none;
  color:white;
}

#menu li:hover > a,
#menu li a:hover {
  background: #111
}

#menu input {
  display: none;
  margin: 0 0;
  padding: 0 0;
  width: 80px;
  height: 35px;
  opacity: 0;
  cursor: pointer
}

#menu label {
  font: bold 30px Arial;
  display: none;
  width: 35px;
  height: 36px;
  line-height: 36px;
  text-align: center
}

#menu label span {
  font-size: 12px;
  position: absolute;
  left: 35px
}

#menu ul.menus {
  height: auto;
  width: 180px;
  background: #111;
  position: absolute;
  z-index: 99;
  display: none;
  border: 0;
}

#menu ul.menus li {
  display: block;
  width: 100%;
  font: 12px Arial;
  text-transform: none;
}

#menu li:hover ul.menus {
  display: block
}


#menu a.addassetsclass {
  padding: 0 27px 0 14px
}

#menu a.addassetsclass::after {
  content: "";
  width: 0;
  height: 0;
  border-width: 6px 5px;
  border-style: solid;
  border-color: #eee transparent transparent transparent;
  position: absolute;
  top: 15px;
  right: 9px
}

#menu ul.menus a:hover {
  background: #333;
}

#menu ul.menus .submenu {
  display: none;
  position: absolute;
  left: 180px;
  background: #111;
  top: 0;
  width: 180px;
}

#menu ul.menus .submenu li {
  background: #111;
}

#menu ul.menus .has-submenu:hover .submenu {
  display: block;
}


	/* Split the screen in half */
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
.split {
  height: 100%;
  width: 50%;
  position: fixed;
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

.lefttable{
	margin-top:90px;
	margin-left:100px;
	
}
td {
padding-left: 80px; 
padding-top: 5px;
padding-bottom: 5px;
padding-right: 60px;
}

/* Control the right side */
.right {
  right: 0;
  background-color: #f4f3f3;
}

.right::after {
  content: "";
  background-image: url("back1.jpeg");
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
  top: 20%;
  left: 40%;
  transform: translate(5%, -50%);
  text-align: left;
}

/* Style the image inside the centered container, if needed */
.centered img {
  width: 150px;
  border-radius: 70%;
}
.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
  z-index: 100;
  position:fixed;
  width:100%;
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

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
  
.addassetbox{

width:250px;
margin-top:80px;
}


.addassetbutn{
margin-left:325px;
font-weight: bold; 

}
.logoutbtn{

float: left;
 // display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  margin-left:780px;
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
<div class="topnav">
<a  href="AdminHome.jsp"><b>Home</b></a>
  <a class="active" href="AddNewAsset.html"><b>Add Assets</b></a>
  <a href="overdueTransactionManagement.jsp"><b>Over-due Assets</b></a>
  <a href="#"><b>Import User</b></a>
  <a href="#"><b>View Reports</b></a>
  <a href="" class="logoutbtn"><b>Logout<b></a>   
  </div>
</div>
<div class="split left">
  <div class="centered">
    <img src="admins.jpg" alt="USER" style="left: 60%; width:90px; height:110px;">
  </div>
  <br><br><br><br>
  <div class="left" align="left">
  <table class="lefttable" style="font-size:18px;">
  
  <%
  	User user = (User)session.getAttribute("currentUser");
  	String name = user.getName();
  	String email = user.getEmail();
  	Date lastLogin = user.getLastLoginTime();
  %>
 
  	<tr>
  		<td><ul><b>Name</b></ul></td>
  		<td><%= name %></td>
  		
  		<!-- <td><input type="text" name="adminName"></td> -->
  	</tr>
  	
 	<tr>
  		<td><ul><b>Email</b></ul></td>
  		<td><%= email %></td>
  		<!-- <td><input type="text" name="admineamil"></td> -->
  	</tr>
	<tr>
  		<td><ul><b>Last Login</b></ul></td>
  		<td><%= lastLogin %></td>
  		<!-- <td><input type="text" name="lastlogin"></td> -->
  	</tr>

    </table>
	</div>
</div>

<div class="split right" style="position:absolute">
	<br><br><br><br><br>
    <h1 style="text-shadow: 4px 4px 2px #A0A0A0" align="center" >Add Assets</h1><br><br><br>
   	<div class="addassetbox">
<form method = "post" action = "addasset">
					<table class="righttable">
					<tr>
					<td><b>Category<b></td>
					<td>
					<select name="category" id="newcategory">
								<option>Category</option>

								<%
									for (int i = 0; i < size; i++) {
								%>
								<option value="<%=listOfAssets.get(i)%>">
									<%=listOfAssets.get(i)%>
								</option>
								<%
									}
								%>
						</select></td>	
					</tr>
					
					<tr>
						<td></td>
						<td>
						<a href="AddNewCategory.jsp">Click to add category...</a>
						</td>
					</tr>

					<tr>
						<td style="width: 20px; font-size: 18px;"><b>Sub-Category<b></td>
						<td><input type="text" name="subcategory" required
							style="height: 30px; width: 200px;"></td>
					</tr>


	<td required>

	<tr>
		<td style="width:20px;font-size:18px;"><b>Description<b></td>
		<td>
			<textarea name="description"  rows="5" cols="35" required>
			</textarea>
		</td>
	</tr>
</table>
<br>
<div class="addassetbutn">
<b><input type= submit value="Add Asset"><b>
</div>
</form>
</div>

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

