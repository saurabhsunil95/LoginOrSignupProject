<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body style="background-color: powderblue;">
<center>
	<h2>Login</h2>

<form action="loginhandler.jsp" method="get">
  Email:<br>
  <input type="email" name="lemail">
  <br>
  Password:<br>
  <input type="password" name="password">
  <br><br>
  <input type="submit" value="Submit">
</form>
</center>
</body>
</html>