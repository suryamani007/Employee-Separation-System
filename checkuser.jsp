<%@page import="dbConnection.Myconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>check user</title>
</head>
<body>
<%
String s4="";
//String s5="";

String s1=request.getParameter("userid");
String s2=request.getParameter("password");	
String s3=request.getParameter("Usertype");	
Myconnection mc=new Myconnection();
Connection con=mc.getConnected();
Statement stmt=con.createStatement();
ResultSet rst=stmt.executeQuery("select * from login_table where user_name='"+s1+"' and password='"+s2+"' and user_type='"+s3+"'");
	if(rst.next())
   {
	s4=	rst.getString(3);
	if(s3.equalsIgnoreCase("admin"))
	response.sendRedirect("hrhome.jsp?s5="+s4);
	else
		response.sendRedirect("employee.jsp?s5="+s4);
   }
	else
		
	out.print("Unauthorized User");
		
%>
</body>
</html>