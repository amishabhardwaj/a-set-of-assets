<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--a set of assets/WebContent/WEB-INF/UserHomepage.html-->
<!DOCTYPE html>
<html>
<head>
	<title>Admin Home</title>
<style>





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
  color: white;
  position:fixed;
 
}

.lefttable{
	margin-top:35px;
	margin-left:10px;
	
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
  width: 200px;
  border-radius: 70%;
}
.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
  z-index: 1;
 
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
margin-left:50px;
}


.addassetbutn{
margin-left:105px;
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
  margin-left:600px;
}



</style>
</head>
<body>
<div class="topnav">

	<a class="active" href="AdminHome.jsp"><b>Home</b></a>
  
  <a  href="AddAssets.jsp"><b>Add Assets</b></a>
  <a href="#OverdueAssets"><b>Over-due Assets</b></a>
  <a href="#"><b>Import User</b></a>
  <a href="#"><b>View Reports</b></a>
  <a href="" class="logoutbtn"><b>Logout<b></a> 
    
  </div>
</div>
<div class="split left">
  <div class="centered">
    <img src="adminimg.jpg" alt="USER" style="left: 60%; width:90px; height:90px;">
  </div>
  <br><br><br><br>
  <div class="left" align="left">
  <table class="lefttable" style="font-size:20px;">
 
  	<tr>
  		<td><ul><b>Name</b></ul></td>
  		
  		<td><input type="text" name="adminName"></td>
  	</tr>
  	
 	<tr>
  		<td><ul><b>Email</b></ul></td>
  		
  		<td><input type="text" name="admineamil"></td>
  	</tr>
	<tr>
  		<td><ul><b>Last Login</b></ul></td>
  		
  		<td><input type="text" name="lastlogin"></td>
  	</tr>

    </table>
	</div>
</div>


<div class="split right" style="position:absolute;">
	<br><br><br><br><br>
    <h2 style="text-shadow: 4px 4px 2px #A0A0A0 ; font-size:30px;" align="center">Assets List</h2><br><br><br>
   	<div class="addassetbox">
<form>
<table class="righttable" style="font-size:18px;">
	<tr>
		<td style="width:20px;"><b>Assets1<b></td>
		<td><input type="text" required></td>
	</tr>
	<tr>
		</td>
	</tr>
	<tr>
		<td><b>Assets2<b></td>
		<td><input type="text" required></td>
	</tr>
</table>
<br>
</form>
</div>
</div>

</body>
</html> 

