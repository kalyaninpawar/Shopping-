<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>
<meta charset="ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://kit.fontawesome.com/fb336c8135.js"></script>
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
.carousel{
height:500px;
width:100%;
}

.carousel-item{
	position: relative;
	display: none;
	float: left;
	width: 100%;
	margin-right: -100%;
	transition:transform 0.6s ease-in-out;
}
.exp{
margin-left:400px;
font-size: 40px;
color: brown;
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
</head>
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
          <a class="nav-link active" href="/customer/Index">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="/customer/allproducts">Products</a>
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
<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">
  <!-- The slideshow/carousel -->
  <div class="carousel-inner carousel">
    <div class="carousel-item active">
      <img src="https://i4.sdlcdn.com/img/campaign/d0142ff83b/Kids_WEB2H.jpg" alt="kid" class="d-block" style="width:100%">

</div>
    <div class="carousel-item">
      <img src="https://i3.sdlcdn.com/img/campaign/87975e63e8/Girls_WEB2H.jpg" alt="women" class="d-block" style="width:100%">
    </div>
    <div class="carousel-item">
      <img src="https://i2.sdlcdn.com/img/campaign/59bd9fe8ca/Boys_WEB2H.jpg" alt="men" class="d-block" style="width:100%">
    </div>
  </div>
 
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
<div class="exp">
 <p> Explore Products</p>
</div>
<br>
<div class="container">
 <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/customer/Kids" target="_blank">
          <img src="https://t3.ftcdn.net/jpg/02/11/82/88/360_F_211828832_OnMaambs24g0vZM8HLjqZ8tU5wH4y1oD.jpg" alt="kids" style="width:100%">
          	<div class="caption">
            <p>Explore Kids Section</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/customer/women" target="_blank">
          <img src="https://media.istockphoto.com/photos/young-african-american-woman-is-holding-shopping-bags-picture-id1155467348?b=1&k=20&m=1155467348&s=170667a&w=0&h=jXBY2Z5rTMhocWhbXsGTC6MhEz-I-9wmwZsYmmMQ_tU=" alt="Nature" style="width:100%">
          <div class="caption">
            <p>Explore Women Section</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/customer/men" target="_blank">
          <img src="https://thumbs.dreamstime.com/b/bachelors-day-consumerism-concept-cheerful-client-customer-consumer-smiling-fashion-purchases-impulse-big-discount-happy-man-210927546.jpg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p>Explore Men Section</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
<br><br>

<div class="main">
	
		<%
		String driverName = "org.postgresql.Driver";
		String connectionUrl = "jdbc:postgresql://localhost:5432/";
		String dbName = "Shopping";
		String userId = "postgres";
		String password = "1234";

		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		%>





		<table align="center" cellpadding="5" cellspacing="5" border="1">
			<h2 align = "center">
				<font><strong>All Products</strong></font>
			</h2>
			<tr>
			<td><b> id</b></td>
				<td><b> Name</b></td>
				<td><b>category</b></td>
				<td><b> price</b></td>
				<td><b>Buy</b></td>
				
			</tr>
			<%
			try {
				connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
				statement = connection.createStatement();
				String sql = "SELECT * FROM customer";

				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
			%>
			<tr color="black">

				<td><%=resultSet.getString("id")%></td>
				<td><%=resultSet.getString("name")%></td>
				<td><%=resultSet.getString("category")%></td>
				<td><%=resultSet.getString("price")%></td>
				<td><a href="/customer/cartInsert">Add to cart</a></td>
				

			</tr>

			<%
			}
			connection.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>
		</table>
	</div> 
	<br>
	<br>
	
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
  </div>
  </div>
  </div>
  </div>
  </footer>
</body>
</html>