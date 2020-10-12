<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.hsbc.pojo.User" %>//folder k name change karlena.
<%
	
	User curruser=(User)session.getAttribute("currentUser");	
	String username=(String)curruser.getUsername();
	String empid=curruser.getUserId()+"";
	String name=(String)curruser.getName();
	String email=(String) curruser.getEmail();
	String telephone=(String)curruser.getPhoneNumber();

%>
<!DOCTYPE html>
<html>
<head>
  <title>User Home</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="ISO-8859-1">
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
  background-image: url("spacedot.gif");
  background-repeat: no-repeat;
  background-size: 100% 100%;
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
  top:0;
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
  .mySlides {display: none;}
img {vertical-align: middle;

}

/* Slideshow container */
.slideshow-container {
  max-width: 200px;
  position: relative;
 margin-left:20px;
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

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}
section h1 span{
    opacity: 0;
    display: inline-block; animation: animate 1s linear forwards;
}
@keyframes animate
{
    
    0%
    {
        opacity: 0;
        transform:rotateY(90deg);
        filter: blur(10px);
    }
    100%
    {
        opacity: 1;
        transform:rotateY(0deg);
        filter: blur(0px);
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
  <a class="active" href="">Home</a>
  <a href="borrowAssetServlet" >Borrow</a>
  <a href="userReturn.jsp">Return</a>
  <a href="userMessage.jsp">Messages</a>
  <div class="search-container">
    <form action=""><!--
      <input type="text" placeholder="Search.." name="search">
      <input type="submit" name="Search" value="Submit">-->
      <a href="logout">Logout</a>
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
    <h2 style="text-shadow: 2px 2px 2px white" align="center">WELCOME USER</h2><br><br><br>
    
<p align="center">
    <article style="margin-top: 5px; margin-left: 180px;">
                        <div  class="slideshow-container">
                    
                            <div class="mySlides fade">
                              <!-- <div class="numbertext">1 / 3</div> -->
                              <img src="book.jpg" style="width:70%">
                              <!-- <div class="text">Caption Text</div> -->
                            </div>
                            
                            <div class="mySlides fade">
                              <!-- <div class="numbertext">2 / 3</div> -->
                              <img src="mobile.jpg" style="width:70%">
                              <!-- <div class="text">Caption Two</div> -->
                            </div>
                            
                            <div class="mySlides fade">
                                <!-- <div class="numbertext">2 / 3</div> -->
                                <img src="laptop.png" style="width:70%">
                                <!-- <div class="text">Caption Two</div> -->
                              </div>
                              
                       
                            </div>
                            <br>
                            
                            <div style="text-align:center">
                              <span class="dot"></span> 
                              <span class="dot"></span> 
                              <span class="dot"></span> 
                            </div>
                    </article>
                    </p><br>
                    <p style="color: white" align="center">"I don't want a lot of good investments; I want a few outstanding ones"</p>
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
<script>
        var slideIndex = 0;
        showSlides();
        
        function showSlides() {
          var i;
          var slides = document.getElementsByClassName("mySlides");
          var dots = document.getElementsByClassName("dot");
          for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";  
          }
          slideIndex++;
          if (slideIndex > slides.length) {slideIndex = 1}    
          for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
          }
          slides[slideIndex-1].style.display = "block";  
          dots[slideIndex-1].className += " active";
          setTimeout(showSlides, 2000); // Change image every 2 seconds
        }
        </script>
</body>
</html>