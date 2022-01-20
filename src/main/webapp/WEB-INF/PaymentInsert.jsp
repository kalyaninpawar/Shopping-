<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Details</title>
<style>
.main {
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
}
</style>
</head>
<body>
	<div class="main">
		<h1>Insert Data</h1>
		<form action="addpayment" method="get">
			<table>
				<tr>
					<td><input type="number" name="pay_id"
						placeholder="Payment ID"></td>
				</tr>
				<tr>
					<td><input type="text" name="pay_desc"
						placeholder="Payment Description"></td>
				</tr>


				<tr>
					<td><input type="number" name="pay_amt"
						placeholder="Payment amount"></td>
				</tr>

				<tr></tr>
				<tr>
					<td><input type="submit" value="Submit"></td>
				</tr>
				<tr>
					<td><a href="/customer/paymentresult">all payment details</a></td>
				</tr>
			</table>
		</form>
		<h5>
			<a href="/home">go to Home Page</a>
		</h5>
	</div>
</body>
</html>