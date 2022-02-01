<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Details</title>
<style>
h6 {
	text-align: right;
}

table {
	background: white;
}

h2 {
	background: white;
}
.button{
	position: absolute;
	bottom: 30px;
}
</style>
</head>
<body>
	<div class="main">
		<h6>
			<a href="/login1">LogOut</a>
		</h6>
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
				<font><strong>Payment Details</strong></font>
			</h2>
			<tr>
			<td><b> Pay id</b></td>
				<td><b> Pay Description</b></td>
				<td><b>Pay Amount</b></td>
		
				
			</tr>
			<%
			try {
				connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
				statement = connection.createStatement();
				String sql = "SELECT * FROM payment";

				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
			%>
			<tr color="black">

				<td><%=resultSet.getString("pay_id")%></td>
				<td><%=resultSet.getString("pay_desc")%></td>
				<td><%=resultSet.getString("pay_amt")%></td>
			</tr>

			<%
			}
			connection.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>
		</table>
		<a href="/customer/home" class = "button">go Back</a>
	</div>
</body>
</html>-