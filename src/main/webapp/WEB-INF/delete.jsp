<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<div class="main">
	<br>
		<form action="delete" method="post">
			<table>
				<tr>
					<td>ID</td>
					<td><input type="number" name="id"></input></td>
				</tr>
				<tr>
				<br>
					<td></td>
					<br>
					<td><input type="submit" value="delete"></input></td>
				</tr>
			</table>
		</form>
		<h5>
			<a href="/customer/home">Go to customer Home Page</a>
		</h5>
		<p></p>
		<h5>
			<a href="/customer/home">Go to Home Page</a>
		</h5>
	</div>
</body>
</html>