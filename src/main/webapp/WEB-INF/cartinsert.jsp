<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart to cart </title>
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<div class="center">
		<h1>Cart Details</h1>
		<div class="inner">
			<form action="add123" method="get">
				<table>
					<tr>
						<td>Id</td>
						<td><input type="number" name="id"></td>
					</tr>
					<tr>
						<td>Name</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>Category</td>
						<td><input type="text" name="category"></td>
					</tr>
					
					
					
					
					<tr>
						<td>price</td>
						<td><input type="text" name="price"></td>
					</tr>
				</table>
				<br>
				<button type="submit">Insert to cart</button><br><br>
				<br>
		<a href="/customer/rel">Display Cart</a>
			</form>
			<br>
			<br>
			<h5>
			
			<a href="/customer/home">Go to Home Page</a>
		</h5>
		</div>
	</div>
</body>
</html>