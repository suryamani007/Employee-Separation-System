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
String e=request.getParameter("emp_id");
String s=request.getParameter("sep_id");
%>
the separation for id <%=e %> is not confirmed
<form action="status2.jsp?emp_id=<%=e%>&sep_id=<%=s%>" method="post">
                <input type="submit" value="send status"/>
             </form>
</body>
</html>