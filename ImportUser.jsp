<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AsetOfAsset</title>
</head>
<body  style="background-color:gray;">


<meta name="viewport" content="width=device-width, initial-scale=2">
<style>
* {box-sizing: border-box;}

body { 
  margin: 2;
  font-family: Georgia Italic, Helvetica, sans-serif;
}

.header {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 10px 20px;
}

.header a {
  float: left;
  color: blue;
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
  background-color: powderblue;
  color: blue;
}

.header-right {
  float: right;
}

@media screen and (max-width: 350px) {
  .header a {
    display: block;
    text-align: left;
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
    <a href="#about us">About</a>
  </div>
</div>

<br>


<br> 


<form onsubmit="validate.jsp">
		
			Name :  <input type = "text" name = "name"> <br> <br>
			Role : <input type= "radio" name = "r1"> Admin  
					 <input type= "radio" name = "r1"> Borrower <br> <br>
			Telephone :  <input type = "text" name = "phone"> <br> <br>
			Email :  <input type = "email" name = "mail"> <br> <br>		
			Username:  <input type = "text" name = "uname"> <br> <br>
			Password:  <input type = "password" name = "pass"> <br> <br>
			
			Select a file to upload:
			<br><br>
        	<input type = "file" name = "file" size = "10" />
         	<br><br>
         	<input type = "submit" value = "Upload File" />
			<br><br>
			<input type = "submit" value ="Import user"> <br> <br>
		
</form>
</body>
</html>