<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Overdue management</title>
</head>
<body  style="background-color:#f1f1f1;">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Josefin Sans', sans-serif
}

/******************************************************************/
.mySlides {
	display: none;
}



/* Slideshow container */
.slideshow-container {
	max-width: 200px;
	position: relative;
	margin-left: 20px;
	/* margin: auto; */
}

/* Caption text */
.text {
	color: #f2f2f2;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
	text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/* The dots/bullets/indicators */
.dot {
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active {
	background-color: #717171;
}

/* Fading animation */
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.5s;
	animation-name: fade;
	animation-duration: 1.5s;
}

@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}

/* On smaller screens, decrease text size */


/*hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh*/
header {
	width:100%;
   height: 100vh; 
   background-image:linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url("back.jpg");
   background-repeat: no-repeat;
   background-size: cover;
}

footer {
	background-color: black;
	padding: 20px;
	text-align: center;
	color: white;
}

nav {
	width: 100%;
	height: 15vh;
	background-color: rgba(0, 0, 0, 0.5);
	color: white;
	display: flex;
	justify-content: space-between;
	align-items: center;
	text-transform: uppercase;
}

nav .logo {
	width: 25%;
	text-align: center;
}

nav .menu {
	width: 40%;
	display: flex;
	justify-content: space-around;
}

nav .menu a {
	width: 50%;
	text-decoration: none;
	color: white;
	font-weight: bold;
}

main {
	width: 100%;
	height:100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
	color: white;
}
.block {
  display: block;
  width: 15%;
  border: none;
  background-color:  #717171;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  text-align: center;
}


</style>

<header>

		<nav>
			<div class="logo">

				<h1 class="">A set Of Assets</h1>
</html>
</div>
<div class="menu">
	<a href="#"></a> <a href="#">ABOUT</a> <a href="#">CONTACT</a>
</div>
</nav>



<h2 align = "center",  style="color: white;">Search overdue assets </h2>
<form style="color: white;" ,height=400>
Search by: <br> <br>
 <input type= "radio" name = "r1"> Date <br> <br>
 <input type= "radio" name = "r1""> Name <br> <br>
 <input type= "radio" name = "r1"> Category <br> <br>
 
 <input type = "submit" value="Search", style="color: white;" , class="block"> <br> <br>
 </form>>
 <table border=1, width=100%, height=70, style="color: white;">
			<tr> <th> Transaction Id </th> <th> Ban Start Date</th>  <th> Fine paid?</th> <th> Ban period finished?</th>  </tr>
			

</body>
</html>