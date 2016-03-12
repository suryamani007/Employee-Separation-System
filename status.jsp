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
<% 

Myconnection mc=new Myconnection();
Connection con=mc.getConnected();
Statement st=con.createStatement();
String e=request.getParameter("emp_id");
String s=request.getParameter("sep_id");
String yes="yes";
st.executeUpdate("insert into Sep_Status values('"+e+"','"+s+"','"+yes+"')");
 %>
 
 <center> <h1>status send successfully </h1>
 <form action="index.jsp">
<input type="submit" value="Sign Out">
</form>
</center>
</body>
</html>