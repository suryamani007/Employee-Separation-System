<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbConnection.Myconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<font size="6" color="red">Project Has Been Added!</font></br>

<%
String proj_no=request.getParameter("proj_no");
String proj_name=request.getParameter("proj_name");
String tech=request.getParameter("tech");
String year=request.getParameter("year");
Myconnection mc=new Myconnection();
Connection con=mc.getConnected();
Statement stmt=con.createStatement();

stmt.executeUpdate("insert into add_project values('"+proj_no+"','"+proj_name+"','"+tech+"','"+year+"')");

%>
<form action="index.jsp">
<input type="submit" value="Sign Out">
</form>       
</center>
</body>
</html>