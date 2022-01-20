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
<title>All Cart data</title>
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
			<a href="/customer/login1">LogOut</a>
		</h6>
		<%
		String driverName = "org.postgresql.Driver";
		String connectionUrl = "jdbc:postgresql://localhost:5432/";
		String dbName = "Shopping";
		String userId = "postgres";
		String password = "admin";

		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		%>
		<table align="center" cellpadding="5" cellspacing="5" border="1" id="table">
			<h2 align = "center">
				<font><strong>All  Cart Details</strong></font>
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
				String sql = "SELECT * FROM cart";

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
		
		<div align=center><span id="val" style=" text-align: center;"  > </span>
		<script>
            
            var table = document.getElementById("table"), sumVal = 0;
            
            for(var i = 1; i < table.rows.length; i++)
            {
                sumVal = sumVal + parseInt(table.rows[i].cells[3].innerHTML);
            }
            
            document.getElementById("val").innerHTML = "Total cart price = " + sumVal;
            console.log(sumVal);
            
        </script>
        </div>
       <h4 style=" text-align: center;">
       <a title="Print Screen" alt="Print Screen" onclick="window.print();" target="_blank" style="cursor:pointer;"> 
       <button>TAKE BILL</button></a></h4>
       <br>
       <h3 style="text-align:center;"><button>Payment</button></h3>
       <br>
		<a href="/customer/Index" class = "button">Go Back</a>
	</div>
</body>
</html>