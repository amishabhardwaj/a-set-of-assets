<%@page import="com.hsbc.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--a set of assets/WebContent/WEB-INF/UserHomepage.html-->

<%
   
	User curruser=(User)session.getAttribute("currentUser");	
	String username=(String)curruser.getName();
	String email=(String) curruser.getEmail();
%>

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
  background-color: black;/*#e9eeed*/ 
  background-image: url("spacedot.gif");
  background-repeat: no-repeat;
  background-size: 100% 100%;
  color: white;
  position: fixed;
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
  border-radius: 50%;
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
  margin-left:780px;
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

.right::after {
  content: "";
  background-repeat: no-repeat;
  background-size: 100% 100%;
  color: white;
  opacity: 0.20;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  position: absolute;
  z-index: -1;   
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

	<a class="active" href="AdminHome.jsp"><b>Home</b></a>
  
  <a  href="AddNewAsset.jsp"><b>Add Assets</b></a>
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
  <table class="lefttable" style="font-size:20px;">
 
  	<tr>
  		<td><ul><b>UserName</b></ul></td>
  		
  		<td><%=username%></td>
  	</tr>
  	
 	<tr>
  		<td><ul><b>Email</b></ul></td>
  		
  		<td><%=email%></td>
  	</tr>
    </table>
	</div>
</div>


<div class="split right">
  <br><br><br><br><br>
    <h2 style="text-shadow: 2px 2px 2px white" align="center">WELCOME ADMIN</h2><br><br><br>
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
