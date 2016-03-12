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
<title>Total Employee Details</title>
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
ResultSet res=st.executeQuery("select * from emp_details");

  %>
  <h2 class="menu-name">Total Employee Details</h2>
          <table class="server-table">
                
		  <tr>
			<th>Emp Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Department</th>
			<th>Address</th>
			<th>Joining</th>
			<th>Project</th>
			<th>Salary</th>
			<th>Contact</th>
			<th>Technology</th>
         </tr>
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
	        <td><%=res.getString(8)%></td>
	        <td><%=res.getString(9)%></td>
	         <td><%=res.getString(10)%></td>
		</tr>
		<%} %>
          </table>
<form style="text-align: center;" action="hrhome.jsp">
             <input type="submit" class="submit-button" value="Return Home"/>
            </form>
</div>
</body>
</html>