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
<title>Insert title here</title>
</head>
<body>
<div class="main">
		<h6>
			<a href="/customer/login1">LogOut</a>
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
				<font><strong>All Details</strong></font>
			</h2>
			<tr>
			<td><b> id</b></td>
				<td><b> Name</b></td>
				<td><b>category</b></td>
				<td><b> price</b></td>
				
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
</html>