<%@page import="java.sql.ResultSet"%>
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
String s1;
Myconnection mc=new Myconnection();
Connection con=mc.getConnected();
Statement st=con.createStatement();
int id=Integer.parseInt(request.getParameter("sepid"));
 ResultSet rst=st.executeQuery("select status from sep_status where Sep_id="+id+"");
 if(rst.next())
 {
	  s1=rst.getString(1);
	  out.print("your status is:");
	  out.print(s1);
 }

%>
<form action="index.jsp">
<input type="submit" value="Sign Out">
</form>
</body>
</html>