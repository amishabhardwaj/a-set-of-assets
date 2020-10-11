<html lang="en">
  <head>
  	<title>Sign Up!</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" >
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  </head>
  <style type="text/css">
  *
{
margin: 0;
padding: 0;
box-sizing:border-box;
font-family:'Century SchoolBook',sans-serif
}
nav{
    width: 100%;
    height: 15vh;
    background-color:rgba(0 ,0,0, 0.5);
    color:white;
    display: flex;
    justify-content: space-between;
    align-items: center;
   
}
nav .logo
{
    width: 25%; text-align: center;
}
nav .menu{
    width:40%;  display: flex; justify-content:space-around;
}

nav .menu a{
    width:25%;text-decoration: none;color: white;font-weight: bold;font-size: 30px;
}
nav .menu a:hover
{
  color:#bbb;
}
    #inputbtn:hover{cursor:pointer;}
    
  </style>
  

  <body style=" background-image:linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url('back.jpg');background-repeat: no-repeat;background-size: cover;">
    <header>

      <nav>
        <img src="Logo.jpg" style= " margin-left: 10px; width:110px; height: 90px;">
         
        <h1 style="font-size: 35px; margin-left:-390px;"><i><b>a set of assets</b></i></h1></html></div>
         

            
              <div class="menu">
                <a href="index.jsp">HOME</a>
              <a href="AboutUs.jsp">ABOUT</a>
            
              
              </div>
            </nav>
    <div class="container-fluid" style="margin-top:60px;margin-bottom:60px;color:#34495E;">
      <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-4">
          <div class="card">
            <img src="Regimage.jpg" class="card-img-top">
            <div class="card-body"  style="box-shadow: 0 10px 12px 0 rgba(112, 103, 103, 0.7)";>
              <center>
              <h2>SIGN UP</h2><br>
              <form class="form-group" method="post" action="registration">
                <div class="row">
                  <div class="col-md-5"><label>NAME: </label></div>
                  <div class="col-md-7"><input type="text" name="name" class="form-control" placeholder="enter name" required/></div><br><br><br>


                  <div class="col-md-5"><label >ROLE </label></div>
                  <div class="col-md-7" style="margin-left: 100px;margin-top:-30px;"><input type="radio" required
                    id="User" name="role" value="User"}>
                  <label for="User" style="text-align: center;">User</label>
                  <div class="col-md-8"></div><input type="radio" id="Admin" name="role" value="Admin">
                  <label for="Admin">Admin</label></div><br><br><br>


                  <div class="col-md-5"><label>TELEPHONE: </label></div>
                  <div class="col-md-7"><input pattern ="^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$"class="form-control" name="telephone" placeholder="enter telephone" required/></div><br><br><br>
                  <div class="col-md-5"><label>EMAIL(abc@xyz.com)</label></div>
                  <div class="col-md-7"><input type="email"  class="form-control" name="email" placeholder="enter email" required/></div><br><br><br>
                  <div class="col-md-5"><label>USERNAME: </label></div>
                  <div class="col-md-7"><input type="text" class="form-control" name="username" placeholder="enter username" required/></div><br><br><br>
                  <div class="col-md-5"><label>PASSWORD: </label></div>
                  <div class="col-md-7"><input type="password" class="form-control" name="password" placeholder="enter password" required/></div><br><br><br>
                  <div class="col-md-5"><label>CONFIRM PASSWORD: </label></div>
                  <div class="col-md-7"><input type="password" class="form-control" name="conpass" placeholder="confirm password" required/></div><br><br><br>
                </div>
                <center><input type="submit" id="inputbtn" name="login_submit" value="SIGN UP" class="btn btn-primary"></center>
              </form>
            </center>
            </div>
          </div>
        </div>
         <div class="col-md-7"></div>
      </div>
    </div>
   
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>