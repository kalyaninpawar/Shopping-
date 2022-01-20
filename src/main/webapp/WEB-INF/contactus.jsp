<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://kit.fontawesome.com/fb336c8135.js"></script>
  </head>
<style>
@font-face {
font-family: 'Klee One', cursive;
   src: url(sansation_light.woff);
}
* {
font-family: 'Klee One', cursive;

}
 .nav-item{
margin-left:80px;
font-size:15px;
}
*{
	margin:0;
	padding:0;
	box-sizing: border-box;
	text-transform: capatalize;
	text-decoration: none;
}

body{
	min-height: 100vh;
	background-size: cover;
	background-position: center;
	
}
header{
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	background: #ffffff;
	box-shadow: 0 5px 10px rgba(0,0,0,.1);
	padding: 0px 7%;
	display: flex;
	align-items: center;
	justify-content: space-between;
	z-index: 1000;
}

@font-face {
font-family: 'Klee One', cursive;
   src: url(sansation_light.woff);
}
* {
font-family: 'Klee One', cursive;
font-size:20px;
}
header{
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	background: #ffffff;
	box-shadow: 0 5px 10px rgba(0,0,0,.1);
	padding: 0px 7%;
	display: flex;
	align-items: center;
	justify-content: space-between;
	z-index: 1000;
}

header .logo{
	font-weight: bolder;
	font-size: 25px;
	color: #333;
}
 
header .navbar ul{
	list-style: none;
}

header .navbar ul li{
	position: relative;
	float: left;
}
.h3{
color:#880808;
margin-left:502px;
}

header .navbar ul li a{
	font-size: 20px;
	padding: 20px;
	color: #333;
	display: block;
}

header .navbar ul li a:hover{
	background:grey;
	color: #fff;
}

header .navbar ul li ul{
	position: absolute;
	left: 0;
	width: 200px;
	background: #fff;
}

header .navbar ul li ul li{
	width:100px;
	border-top: 1px solid rgba(0,0,0,.1);
}

header .navbar ul li ul li ul{
	left: 200px;
	top: 0px;
}
li a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: grey;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: black;}

.dropdown:hover .dropdown-content {
  display: block;
}
.footer{
background-color: #24262b;
    padding: 5px 0;
}
.footer-col{
   width: 25%;
   padding: 0 15px;
}
.footer-col h4{
font-size: 18px;
color: #ffffff;
text-transform: capitalize;
margin-bottom: 35px;
font-weight: 500;
position: relative;
}
.footer-col h4::before{
content: '';
position: absolute;
left:0;
bottom: -10px;
background-color: #e91e63;
height: 2px;
box-sizing: border-box;
width: 50px;
}
.footer-col ul li:not(:last-child){
margin-bottom: 10px;
}
.footer-col ul{
list-style: none;
}
.footer-col ul li a{
font-size: 16px;
text-transform: capitalize;
color: #ffffff;
text-decoration: none;
font-weight: 300;
color: #bbbbbb;
display: block;
transition: all 0.3s ease;
text-align: left;
}
.footer-col ul li a:hover{
color: #ffffff;
padding-left: 8px;
}
.footer-col .social-links a{
display: inline-block;
height: 40px;
width: 40px;
background-color: rgba(255,255,255,0.2);
margin:0 10px 10px 0;
text-align: center;
line-height: 40px;
border-radius: 50%;
color: #ffffff;
transition: all 0.5s ease;
}
.footer-col .social-links a:hover{
color: #24262b;
background-color: #ffffff;
}
.container{
max-width: 1170px;
margin:auto;
}
.row{
display: flex;
flex-wrap: wrap;

ul{
list-style: none;
}
/responsive/
@media(max-width: 767px){
  .footer-col{
    width: 50%;
    margin-bottom: 30px;
}
}
@media(max-width: 574px)
{
  .footer-col
  {
    width: 100%;
}
}

</style>

<body>
  <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Online Shopping</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link " href="/customer/Index">Home</a>
        </li>
         <li class="nav-item dropdown active">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Category</a>
          <ul class="dropdown-menu bg-light">
            <li><a class="dropdown-item text-dark" href="/customer/Kids">Kids</a></li>
            <li><a class="dropdown-item text-dark" href="/customer/men">Mens</a></li>
            <li><a class="dropdown-item text-dark" href="/customer/women">Womens</a></li>
          </ul>
        </li>
      	<li class="nav-item">
          <a class="nav-link" href="/customer/aboutus">About Us</a>
        </li>
<li class="nav-item">
          <a class="nav-link" href="/customer/contactus">Contact Us</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="/customer/login1">Login</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
  <div class="container mt-5">
  <div class="row">
    <div class="col-sm-4">
      <h3>Address</h3>
     <strong>Online Shopping</strong><br>
                        created by <br>
                        Suman Somvanshi<br>
                        Karishma badhe<br>
                        Sneha Mane<br>
                        Asmita<br>
                        Kalyani<br>
                        <br>
                        
    </div>
    <div class="col-sm-4">
      <i class="fas fa-phone-alt fa-2x"></i> <br> <br>
      <strong>Telephone</strong> <br><br>
+91-22-26496865
    </div>
    <div class="col-sm-4">
      <i class="fas fa-envelope-square fa-2x"></i> <br> <br>       
      <strong>Enquires</strong> <br>
                        <a href="mailto:onlineshopping@gmail.com">onlineshopping@gmail.com</a>
    </div>
  </div>
</div>
<br><br>
<footer class="footer">
  <div class="container">
  <div class="row">
  <div class="footer-col">
  <h4>Quick Link</h4>
  <ul>
  <li><a href="index.jsp">Home</a></li>
  <li><a href="#">Category</a></li>
  <li><a href="contact_us.jsp">About us</a></li>
  <li><a href="about.jsp">Contact us</a></li>
  </ul>
  </div>
  <div class="footer-col">
  <h4>Get help</h4>
  <ul>
  <li><a href="#">FAQ</a></li>
  <li><a href="#">shipping</a></li>
  <li><a href="#">order status</a></li>
  <li><a href="#">payment options</a></li>
  </ul>
  </div>
 
  <div class="footer-col">
  <h4>Follow us</h4>
  <div class="social-links">
  <a href="#"><i class="fab fa-facebook-f"></i></a>
  <a href="#"><i class="fab fa-twitter"></i></a>
  <a href="#"><i class="fab fa-instagram"></i></a>
  <a href="#"><i class="fab fa-linkedin-in"></i></a>
  </div>
  </div>
  </div>
  </div>
  </footer>
</body>
</html>