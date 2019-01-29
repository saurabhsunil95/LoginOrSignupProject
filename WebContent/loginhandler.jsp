<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.servlet.*" %>
	<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LoginHandler</title>
</head>
<body style="background-color: powderblue;">
	<%
	String ee = request.getParameter("lemail");
    String p = request.getParameter("password");
    String e = ee.toLowerCase();
    
   	 	Class.forName("com.mysql.jdbc.Driver");
		Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/logindata", "userid", "password");
		Statement st = co.createStatement();
		ResultSet rs = st.executeQuery("select * from data where email='"+e+"'");
		
		if(rs.next()) {
			String ps = rs.getString("password");
			if(p.equals(ps)){
				String n = rs.getString("name");
				String c = rs.getString("city");
				String m = rs.getString("mobile");
				String i = rs.getString("information");
				
				out.println("<h2 style='text-align:center'>User Profile Card</h2>");
				out.println("<img src='img.jpg' alt='User Image' style='width:150px;height:200px;display: block;margin-left: auto;margin-right: auto;'>");
				out.println("<center><b>Name: </b>"+n+"</center>");
				out.println("<center><b>City: </b>"+c+"</center>");
				out.println("<center><b>Mobile no.: </b>"+m+"</center>");
				out.println("<center><b>Info: </b>"+i+"</center>");
				out.println("<br><center><a href='login.jsp'><button>LogOut</button></a></center>");
				
				
			}
			else out.println("Invalid Password!!");
		}
		else{ 
			out.println("Account Does not exists. Please ");
			out.println("<a href='sigup.jsp'>SignUp</a> !!");
			
		}
		co.close();
	%>


</body>
</html>
