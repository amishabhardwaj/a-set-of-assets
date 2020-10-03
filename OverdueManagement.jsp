<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Overdue management</title>
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
    <a href="#about us">About Us</a>
  </div>
</div>

<h2 align = "center" >Search overdue assets </h2>

Search by: <br> <br>
 <input type= "radio" name = "r1"> Date <br> 
 <input type= "radio" name = "r1"> Name <br> 
 <input type= "radio" name = "r1"> Category <br> <br>
 
 <input type = "submit" value="Search" > <br> <br>
 
 <table border=1, width=100%, height=70>
			<tr> <th> Transaction Id </th> <th> Ban Start Date</th>  <th> Fine paid?</th> <th> Ban period finished?</th>  </tr>
			

</body>
</html>