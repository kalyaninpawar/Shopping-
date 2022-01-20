<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>About Us</title>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
margin-left:100px;
font-size:15px;
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
<br>
<br>
<div class="card text-center">
  <div class="card-header">
   About Project
  </div>
  <div class="card-body">
    <h5 class="card-title">This is online shopping website.From here customer can buy products.
               There are three categories.They are kids,women and men.
               </h5>
    <p class="card-text">This project is done using spring boot,jsp,servlet and postgresql.</p>
   </div>
</div>
<footer class="footer">
  <div class="container">
  <div class="row">
  <div class="footer-col">
  <h4>Quick Link</h4>
  <ul>
  <li><a href="/customer/Index">Home</a></li>
  <li><a href="#">Category</a></li>
  <li><a href="/customer/aboutus">About us</a></li>
  <li><a href="/customer/contactus">Contact us</a></li>
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
  </div>
  </div>
  </div>
  </div>
  </footer>
</body>