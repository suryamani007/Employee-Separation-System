<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbConnection.Myconnection"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form Submit</title>
</head>
<body>
<center>
<font size="6" color="red">Your Form have been successfully submitted!</font></br>

<%
Random r1=new Random();
int rid=(Math.abs(r1.nextInt()%1000+100000));
out.print("Your Seperation ID is"+rid);
int eid=Integer.parseInt(request.getParameter("emp_id"));
String s2=request.getParameter("emp_name");
String s3=request.getParameter("email_id");
String s4=request.getParameter("reason");
String s5=request.getParameter("address");
int pno=Integer.parseInt(request.getParameter("current_projectno"));
String s7=request.getParameter("conno");

Myconnection mc=new Myconnection();
Connection con=mc.getConnected();
Statement stmt=con.createStatement();

stmt.executeUpdate("insert into separation_table values('"+eid+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"',"+pno+",'"+s7+"','"+rid+"')");

%>
<form action="index.jsp">
<input type="submit" value="Sign Out">
</form>
</center>
</body>
</html>