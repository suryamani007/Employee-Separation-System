<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbConnection.Myconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Form Details</title>
<link rel="stylesheet" href="reset.css" />
<link rel="stylesheet" href="style.css" />
</head>
<body>
<header>
<h1>Employee Separation System</h1>
</header>
<div id="wrap-main-content" class="group">

<%
Myconnection mc=new Myconnection();
Connection con=mc.getConnected();
Statement st=con.createStatement();
String s1=request.getParameter("id");
ResultSet res=st.executeQuery("select * from separation_table where separation_id='"+s1+"'");
%>
  
     <h2 class="menu-name">Form Details</h2>
       <table class="server-table">
          <tr>
			<th>Emp_id</th>
			<th>Emp_name</th>
			<th>Email_id</th>
			<th>Sep_reason</th>
			<th>Address</th>
			<th>Current_proj</th>
			<th>Relieving_date</th>
			<th>sep_id</th>
       
	<% 
	while(res.next())
 {
%> 		
		    <tr>
		    	<td><%=res.getInt(1)%></td>
		        <td><%=res.getString(2)%></td>
	            <td><%=res.getString(3)%></td>
		        <td><%=res.getString(4)%></td>
		        <td><%=res.getString(5)%></td>
		        <td><%=res.getString(6)%></td>
                <td><%=res.getString(7)%></td>
                <td><%=res.getInt(8)%></td>
		   </tr>
	    	<%} %>  
        </table>	
</div>               		 
</body>
</html>