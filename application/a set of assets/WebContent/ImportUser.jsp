<!--a set of assets/WebContent/WEB-INF/UserHomepage.html-->
<!DOCTYPE html>
<html>
<head>
	<title>Import User</title>
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
  background-color: black;/#e9eeed/ 
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
  z-index: 9;
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
  <a href="overdueTransactionManagement.jsp"><b>Over-due Assets</b></a>
  <a class="active" href="ImportUser.jsp"><b>Import User</b></a>
  <a href="ViewReport.jsp"><b>View Reports</b></a>
  <a href="logout" class="logoutbtn"><b>Logout<b></a> 
    
  </div>
</div>
<div class="split left">
  <div class="centered">
    <img src="face.png" alt="USER" style="left: 40%;">
  </div>
  <br><br><br><br><br><br><br><br>
  <div class="left" align="left">
  <table class="lefttable">
 
  	<tr>
  		<td><ul><li>Name</li></ul></td>
  		<td>:</td>
  		<td>--</td>
  	</tr>
  	
 	<tr>
  		<td><ul><li>Email Id</li></ul></td>
  		<td>:</td>
  		<td>--</td>
  	</tr>
	<tr>
  		<td><ul><li>Logged in at</ul></td>
  		<td>:</td>
  		<td>--</td>
  	</tr>

    </table>
	</div>
</div>
<div class="split right">
	<br><br><br><br><br>
    <h2 style="text-shadow: 4px 4px 2px #A0A0A0" align="center">Import Users</h2><br><br><br>
  
 
  
<form method="post" onclick="validate()" action="importuser">

			<h2 align="center"> Select a file to upload:</h2>
        	<form enctype="multipart/form-data" method="post" align="center">
			<input type="file" name="jsonFile">
			<input type="submit" value="Upload File">
			</form>
			<br> <br>
			</form>
			
			
			<%
			String str = (String)session.getAttribute("result");
			pageContext.setAttribute("str", str);
			%>
			
			<h3>${str }</h3>
			<br> <br>
		<form align="center">
			<input type="button" value="Back to Home"
				onclick="location.href = 'AdminHome.jsp';" />
		</form>

</div>
<footer>
        <p><b>Copyright</b></p>
</footer>
</body>
</html>