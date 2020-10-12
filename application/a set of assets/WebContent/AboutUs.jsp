

<!DOCTYPE html>
<html lang="en">
<head>
<title>About Us</title>
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
body{
  background-image:linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url("back.jpg");
   background-repeat: no-repeat;
   background-size: cover;
}
header{
    position: fixed;
    top: 0;
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
    top: 0;
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
    width:25%;  display: flex; justify-content:space-around;
}

nav .menu a{

    width:25%;text-decoration: none;color: white;font-size:26px;font-weight: bold;
}
nav .menu a:hover
{
  color:#f1f1f1;
}
main{
    width: 100%;
    height: 5vh;
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
.info{
    top: 20px;
    width:60%;
   margin:100px auto;
   background-color: white;
   color: black;
   font-size: 20px;
   padding: 15px;
   text-align: justify;
   text-justify: inter-word;
}
.info img{
    left: 50px;
width:80%;
}
.center
{
    display:block;
    margin-left: auto;
    margin-right: auto;
    width: 80%;
}
.menu a {
    text-align: right;
    right: 0;
}
</style>
</head>
<body>
    <header>

        <nav>
            <img src="Logo.jpg" style= " margin-left: 0px; width:110px; height: 90px;">
         
               
                <div class="menu">
                <a href="index.jsp" >BACK</a>
            </header>
                <div class="info">

                    <img src="AboutUsLogo.jpeg" style= "width:100%; height:300px;">
                    <br><br>
                    <h2 style="text-align: center;"><b><i>About Us</i></b></h2><br><br>
                    <p>

                        Our story starts with the name "a set of assets".
                        
                        As obvious it is, it is a play with words offering you a resource of resources.
                        Why buy, when you can borrow, So why should we? Next time you need something, don’t mutter arround, but switch to us, it from the people, of the people, for the people, by the people.
                        Your very own home-grown brand as a budding platform ready to soar high lengths.
                        
                        <p>
                        We started our journey in October 2020, as a competition project connecting people who are looking to borrow an item with proper resources. With sharing at its heart and technology as the backbone, we are aiming to grow to be an experiential marketplace that lets users access premium products without buying them.
                        
                        We are a premium rental marketplace for high-end products.
                        
                        At "a set of assets", we are strong advocates of collaborative consumption and believe that together we can achieve more. This belief has helped us scale here over innumberable users in Pune and Hyderabad and expanding more and lots more.
                    </p>
                     <p>  Beginning future, we are planning expanding our base to various lenders as well.
                        Our lenders, who until now had their high-end products lying unused in a corner, can start earning and in some cases recovering their cost of assets as well. Isn't it wonderful ?
                        
                        We cannot wait to spread our magic to places. </p> <p>So join us in the journey to own less, experience more and say bye to buy! #asetofassets
                        
                        Wondering how our process works?
                        You actually cant. A bunch of some geeky, some nerdy, some entertaining, some boring, some hardworkers, some smart workers and a group of techies try googling away simple stuff.
                        
                        Lets introduce you to our team.</p>   <br><br>   
                        <img src="Aditi.jpeg" class="center"> <br>
                        <img src="Abhishek.jpeg" class="center"> <br>
                        <img src="Abhinav.jpeg" class="center"> <br>
                        <img src="Kshitij.jpeg" class="center"> <br>
                        <img src="Aparna.jpeg" class="center"> <br>
                        <img src="Bharat.jpeg" class="center"> <br>
                        <img src="Bhavya.jpeg" class="center"> <br>
                        <img src="Fareeya.jpeg" class="center"> <br>
                        <img src="Mauli.jpeg" class="center"> <br>
                        <img src="Amisha.jpeg" class="center"> <br>
                </div>
              
      
     
       </div>   
                </div>
            </nav>
                <main>
                    <section>
                        </section>
                        </main>

<br><br>
                        <footer class="site-footer">
                            <div class="container">
                              <div class="row">
                                <div class="col-sm-12 col-md-6">
                                  <h6>A set of assets</h6>
                                  <p class="text-justify" style="text-align: center;">The forever favourite asset management platform
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
                    