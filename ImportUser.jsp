<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AsetOfAsset</title>
</head>
<body  style="background-color:#f1f1f1;">

<meta name="viewport" content="width=device-width, initial-scale=2">
<style>
* {box-sizing: border-box;}

body { 
  margin: 2;
  font-family: Georgia Italic, Helvetica, sans-serif;
}

.header {
  overflow: hidden;
  background-color: #5D6D7E;
  padding: 10px 20px;
}

.header a {
  float: right;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 35px;
  font-weight: bold;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: gray;
  color: black;
}

.header-right {
  float: left;
}

@media screen and (max-width: 350px) {
  .header a {
    display: block;
    text-align: right;
  }
  
  .header-right {
    float: none;
  }
}
</style>


<div class="header">
  <a href="#default" class="logo">A set Of Assets</a>
  <div class="header-right">
    <a class="active" href="#home">Home</a>
    <a href="#contact">Contact</a>
    <a href="#about us">About us</a>
  </div>
</div>

<br>


<br> 
<script>
			function validate(){

				var name = document.getElementById("name").value;
				var phone = document.getElementById("phone").value;
				var mail = document.getElementById("mail").value;
				var uname = document.getElementById("uname").value;
				var pass = document.getElementById("pass").value;
				
				if(name=="" && phone=="" && mail=="" && uname=="" && pass=="")
				{
					alert("All fields are mandatory!");
					return false;
				}
				else
					return true;
			}
			 
</script>



<form method="post" class="split left">


			<table height=400 bgcolor = #5D6D7E style="color: white;">
			<tr> <td> Name </td> <td> :</td>  <th>  <input type = "text" name = "name"></th> </tr>
			<tr> <td> Role <td> :</td></td>  <td> <input type= "radio" name = "r1"> Admin  <td> <input type= "radio" name = "r1"> Borrower</td> </td> </tr>
			<tr> <td> Telephone <td> :</td>  <td> <input type = "text" name = "phone"> </td> </tr>
			<tr> <td> Email </td> <td> :</td>  <td> <input type = "email" name = "mail"></td> </tr>
			<tr> <td> Username </td><td> :</td>  <td>  <input type = "text" name = "uname"> </td> </tr>
			<tr> <td> Password</td> <td> :</td> <td> <input type = "password" name = "pass"> </td> </tr>
			</table>
			<br> <br>
			<h2 style="Georgia Italic;"> Select a file to upload:</h2>
        	<input type = "file" name = "file" size = "10" class="block" />
         	<br><br>
         	<input type = "submit" value = "Upload File" class="block"/>
			<br><br>
			<input type = "submit" class="block" value ="Import user" onclick="validate()"> <br> <br>
		
</form>

<table border=1, width=100%, height=70>
			<tr> <th> Name </th> <th> Role</th>  <th> Telephone</th> <th> E-mail</th> <th> Username</th> </tr>
			
</table>		
			
</body>
</html>