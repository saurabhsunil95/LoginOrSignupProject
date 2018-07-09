<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
</head>
<body style="background-color: powderblue;">
<center>
	<h2>SignUp</h2>

<form action="signuphandler.jsp">
  Name:<br>
  <input type="text" name="name">
  <br>
  Email:<br>
  <input type="email" name="email">
  <br>
  Password:<br>
  <input type="password" name="password">
  <br>
  City:<br>
  <input type="text" name="city">
  <br>
  Mobile No.:<br>
  <input type="text" name="mobile">
  <br>
  Description:<br>
  <input type="text" name="info" style="height: 100px;">
  <br><br>
  <input type="submit" value="Submit">
</form>
</center>
</body>
</html>