<!DOCTYPE html>
<html lang="en">
<head>
<title>Home Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<style>
*
{
margin: 0;
padding: 0;
box-sizing:border-box;
font-family:'Century SchoolBook',sans-serif
}

.feedback-cards{
	display:flex;
}
.card {
  
  border-radius: 4%;
  box-shadow: 0 10px 10px 0 white;
  max-width: 300px;
  margin: auto;
  padding: 20px;
  text-align: center;
  font-family: arial;
  background-color:rgb(220, 235, 252); 
}

.title {
  color: black;
  padding: 15px;
  font-size: 18px;
}
/******************************************************************/

.mySlides {display: none;}
img {vertical-align: middle;

}

/* Slideshow container */
.slideshow-container {
  max-width: 200px;
  position: relative;
 margin-left:-10px;
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

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
* {
  box-sizing: border-box;
}

/*hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh*/
body{
  background-image:linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url("back.jpg");
   background-repeat: no-repeat;
   background-size: cover;
}
header{
   width:100%;
   height: 100%; 
   
}
footer {
  background-color: black;
  padding: 20px;
  text-align: center;
  color: white;
}
nav{
    width: 100%;
    height: 15vh;
    background-color:rgba(0 ,0,0, 0.5);
    color:white;
    display: flex;
    justify-content: space-between;
    align-items: center;
    /* text-transform: uppercase; */
}
nav .logo
{
    width: 35%; text-align: center;
}
nav .menu{
    width:45%;  display: flex; justify-content:space-around;
}

nav .menu a{
    width:25%;text-decoration: none;color: white;font-size:26px;font-weight: bold;
}
nav .menu a:hover
{
  color:#bbb;
}
main{
    width: 100%;
    height: 95vh;
    display:flex;justify-content: center;align-items: center;text-align: center;color: white;
}

/* section h3{
    font-size: 35px;font-weight: 200;letter-spacing: 3;text-shadow: 2px 2px 2px black;
} */
section h1{

    margin: 30px 0 10px 0;
  font-size: 55px;
  font-weight: 700;
  text-shadow: 2px 1px 5px black;
  /* text-transform: uppercase; */
  transform:translateY(-50%)
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
section p{

  font-size: 25px;
  word-spacing: 2px;
  margin-bottom: 25px;
  text-shadow: 2px 1px 5px black;
}
section a{
    padding: 12px 30px;border-radius: 4px;outline: none;text-transform: uppercase;font-size: 
    13px;font-weight: 500;text-decoration:none ;letter-spacing: 1px;transition: all .5s ease;
}
section button{
    padding: 12px 30px;border-radius: 4px;outline: none;text-transform: uppercase;font-size: 
    13px;font-weight: 500;text-decoration:none ;letter-spacing: 1px;transition: all .5s ease;
}
section .buttonone
{
    background:#fff;
    color: #000;
}
section .buttontwo
{
    background:#00b894;
    color:black;
}
 .buttonone:hover
{
    background:#00b894;
    color:white;
}
.buttontwo:hover
{
    background:#fff;
    color: #000;
}
/* The popup form - hidden by default */
.form-popup {
  box-shadow:2px 3px 5px rgb(177, 159, 159);
   margin-top: 140px;
   margin-right: 20px;
  display: none;
  position: fixed;
  top: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
 
  max-width: 300px;
  padding: 10px;
  background-color: white;
  color: black;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background:#f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  border-radius:6px;
  background-color: #4d79ff/*#4CAF50*/;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}

/*for button signup*/
.form-popup1 {
  margin-top: 110px;
  display: none;
  position: fixed;
  top: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container1 {
  max-width: 600px;
  padding: 10px;
  background-color: white;
  color: black;
}

/* Full-width input fields */
.form-container1 input[type=text], .form-container1 input[type=password], .form-container1 input[type=email]{
  width: 50%;
  padding: 15px;
  margin: 5px 0 5px 0;
  border: none;
  background:#f1f1f1;
}

/* When the inputs get focus, do something */
.form-container1 input[type=text]:focus, .form-container1 input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container1 .btn {
  background-color: #4d79ff/*#4CAF50*/;
  color: white;
  padding: 8px 10px/*16px 20px*/;
  border: none;
  cursor: pointer;
  margin-left: 80px;
  width: 50%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container1 .cancel {
  background-color: black;
}

/* Add some hover effects to buttons */
.form-container1 .btn:hover, .open-button:hover {
  opacity: 1;
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
    <header>

        <nav>
            <img src="Logo.jpg" style= " margin-left: 0px; width:110px; height: 90px;">
         
               
                <div class="menu">
                  
                <a href="AboutUs.jsp">ABOUT</a>
              
                <a href="Register.jsp">SIGN UP</a>
      
       <a href="#" onclick="openForm()">LOGIN</a>
       <div class="form-popup" id="myForm" >
         <form method="post" action="login" class="form-container">
           <h1 style="text-align: center;">LOGIN</h1><br><br>

           <label for="username"><b>User Name</b></label>
           <input type="text" placeholder="Enter User Name" name="username" required>

           <label for="psw"><b>Password</b></label>
           <input type="password" placeholder="Enter Password" name="password" required>

           <button type="submit" class="btn" onclick="login.jsp">Login</button>
           <button type="submit" class="btn cancel" onclick="closeForm()">Close</button>
         </form>
       </div>   
                </div>
            </nav>
                <main>
                    <section>
                     <!-- <h3>WELCOME!!!</h3> -->
                    
                    <!-- <a href="#" class="buttontwo">LOGIN</a>-->

                    

                     <article style="margin-top: 50px;" >
                      <br><br><br>
                      <br><br>
                        <div  class="slideshow-container">

                            <div class="mySlides fade">
                              <!-- <div class="numbertext">1 / 3</div> -->
                              <img src="MobilePhone.jpg" style="width: 470%;margin-left:-340px;" >
                              <!-- <div class="text">Caption Text</div> -->
                            </div>

                            <div class="mySlides fade">
                              <!-- <div class="numbertext">2 / 3</div> -->
                              <img src="HeadPhones.jpg" style="width: 470%;margin-left:-340px;">
                              <!-- <div class="text">Caption Two</div> -->
                            </div>

                            <div class="mySlides fade">
                                <!-- <div class="numbertext">2 / 3</div> -->
                                <img src="DSLR.jpg" style="width: 470%;margin-left:-340px;" >
                                <!-- <div class="text">Caption Two</div> -->
                              </div>

                              <div class="mySlides fade">
                                <!-- <div class="numbertext">2 / 3</div> -->
                                <img src="Book1.jpg" style="width: 470%;margin-left:-340px;" >
                                <!-- <div class="text">Caption Two</div> -->
                              </div>

                              <div class="mySlides fade">
                                <!-- <div class="numbertext">2 / 3</div> -->
                                <img src="Book2.jpg" style="width: 470%;margin-left:-340px;" >
                                <!-- <div class="text">Caption Two</div> -->
                              </div>
                              <div class="mySlides fade">
                                <!-- <div class="numbertext">2 / 3</div> -->
                                <img src="watch.jpg" style="width: 470%;margin-left:-340px;" >
                                <!-- <div class="text">Caption Two</div> -->
                              </div>
                               <div class="mySlides fade">
                                <!-- <div class="numbertext">2 / 3</div> -->
                                <img src="Mobile2.jpg" style="width: 470%;margin-left:-340px;" >
                                <!-- <div class="text">Caption Two</div> -->
                              </div>
                              <div class="mySlides fade">
                                <!-- <div class="numbertext">2 / 3</div> -->
                                <img src="PS.jpg" style="width: 470%;margin-left:-340px;" >
                                <!-- <div class="text">Caption Two</div> -->
                              </div>



                            </div>
                            <br>
                            <br><br>
                            <div style="text-align:center">
                              <span class="dot"></span> 
                              <span class="dot"></span> 
                              <span class="dot"></span> 
                              <span class="dot"></span> 
                              <span class="dot"></span> 
                              <span class="dot"></span> 
                              <span class="dot"></span> 
                               <span class="dot"></span> 
                               <br><br><br><br>
                            </div>
                    </article>
                    </section>
               
    </header>
    <br><br><br><br>
    <h1 style="color: white;font-family: Stencil, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: 70px;text-align: center;">A set of assets</h1><br><br>
    <hr style="width:80%;text-align:left;margin-left:140px;margin-right:10px;">
    <br><br>
    <div class="feedback-cards">
    <div class="card">
     
      <!-- <h2 style="padding: 10px;"></h2> -->
      <img src="stars.png"><br><br>
      <h1 class="title"style="font-size: 26px;">ACCESS MORE</h1>
      <p>Pursue Passions.Get things done.</p>
      
      
      <br><br><br>
      
    </div>
    <div class="card">
      <img src="money-transfer.png"><br><br>
      <h1 class="title"style="font-size: 26px;">SAVE MONEY</h1>
      <p>Buy less.Rent for a fraction of the cost</p>
     
      <br><br><br>
    </div>
    <div class="card">
    
      <!-- <h2 style="padding: 10px;"></h2> -->
      <img src="high-quality.png"><br><br>
      <h1 class="title" style="font-size: 26px;">QUALITY GOALS</h1>
      <p>High Performance. High Quality.</p>
    
      <br><br><br>
    </div>
    
    </div>
    <br><br>
    <h1 style="text-align:center;color: white;padding: 10px;"><i>These are the few mottos that we abide by.</i></h1> <br>
    <hr style="width:80%;text-align:left;margin-left:140px;margin-right:10px;"><br><br><br>
  </main>


</div>


<img src="Feedback.jpg" style="width: 55%;height: 55%;margin-left: 335px;">
<br><br>
<h1 style="text-align:center;color: white;padding: 10px;"><i>Valuable feedbacks of our frequent customers</i></h1> <br>

<hr style="width:80%;text-align:left;margin-left:140px;margin-right:10px;">
<br><br><br>



    <!-- <footer style="color:rgb(65, 59, 59);">
        <p style="color:rgba(250, 242, 242, 0.897)"><h3>"a set of assets"</h3><br>
          The forever favourite asset management platform
          <br>
          "a set of assets" is a leading e-asset management platform based in Pune and Hyderabad.
          Started in 2020, "a set of assets" provides various products across various categories such as cameras, work essentials, gaming, & reading for renting purposes.
          Since inception, we have served innumberable customers and helped them own less and experience more.
          
         <br> Join us in our journey in saying Bye to Buy and #asetofassets.</p>
      </footer> -->

      <footer class="site-footer">
        <div class="container">
          <div class="row">
            <div class="col-sm-12 col-md-6">
              <h6>A set of assets</h6>
              <p class="text-justify">The forever favourite asset management platform
                <br>
                "a set of assets" is a leading e-asset management platform based in Pune and Hyderabad.
                Started in 2020, "a set of assets" provides various products across various categories such as cameras, work essentials, gaming, & reading for renting purposes.
                Since inception, we have served innumberable customers and helped them own less and experience more.
                
               <br> Join us in our journey in saying Bye to Buy and #asetofassets</p>
            </div>
  
            <div class="col-xs-6 col-md-3">
              <h6>Assets we offer:</h6>
              <ul class="footer-links">
                <li>Laptops</li>
                <li>Mobile Phones</li>
                <li>Gaming gears</li>
                <li>Smart Gadgets</li>
                <li>DSLR</li>
                <li>Books</li>
              </ul>
            </div>
  
            <div class="col-xs-6 col-md-3">
              <h6>Brands we offer:</h6>
              <ul class="footer-links">
                <li>From ROG to Dell</li>
                <li>From Samsung to Nokia</li>
                <li>From Bose to Nintendo </li>
                <li>From Canon to Nikon</li>
                <li>From Sudha Muraty to Sidney Sheldon</li>
              </ul>
            </div>
          </div>
          <hr>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-md-8 col-sm-6 col-xs-12">
              <p class="copyright-text">Copyright &copy; 2020 All Rights Reserved by 
           <a href="#">A set of assets pvt. ltd.</a>.
              </p>
            </div>
  
            <div class="col-md-4 col-sm-6 col-xs-12">
              <ul class="social-icons">
                <li><a class="facebook" href="#"><i class="fab fa-facebook"></i></a></li>
                <li><a class="twitter" href="#"><i class="fab fa-twitter"></i></a></li>
                <li><a class="dribbble" href="#"><i class="fab fa-dribbble"></i></a></li>
                <li><a class="linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>   
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
          setTimeout(showSlides, 1500); // Change image every 1 seconds
        }
        function openForm1() {
  document.getElementById("myForm1").style.display = "block";
}

function closeForm1() {
  document.getElementById("myForm1").style.display = "none";
}
        function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
        </script>
</body>
</html>