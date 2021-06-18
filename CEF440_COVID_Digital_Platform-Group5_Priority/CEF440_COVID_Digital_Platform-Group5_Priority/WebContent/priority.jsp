<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="Registration" method="post">
		<table>

			<tr>
				<td>User Name</td>
				<td><input type="text" name="Name"></td>

			</tr>

			<tr>
				<td>Password</td>
				<td><input type="password" name="password"> required</td>

			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="Email"></td>

			</tr>
			<tr>
				<td>Phone number</td>
				<td><input type="number" name="phone"></td>

			</tr>

			<tr>
				<td>location</td>
				<td><input type="text" name="location"></td>

			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="register"></td>

			</tr>
			
		</table>



	</form>

</body>
</html>