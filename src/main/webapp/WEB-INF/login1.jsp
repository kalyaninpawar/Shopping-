<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<center>
<h1>Login Page</h1>

<h2>${errorMsg}</h2>
<form method="post">
<input type="text" name="userId" placeholder="User ID"/><br>
<br>
<input type="password" name="password" placeholder="Password"/><br>
<br>
<button>Login</button>
</form> 
</center>

</body>
</html>