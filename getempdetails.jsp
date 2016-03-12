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
<title>Get Employee Details</title>
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
String s2=request.getParameter("id");
ResultSet rst=st.executeQuery("select * from separation_table where separation_id='"+s2+"'");
int e=0;
 while(rst.next())
 {
 e = rst.getInt(1);
 }
ResultSet rst1=st.executeQuery("select * from emp_details where emp_id='"+e+"'");
%>
        <h2 class="menu-name">Employee Details</h2>
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
	while(rst1.next())
 {
%>
		     <tr>
		     
		         <td><%=rst1.getInt(1)%></td>
		         <td><%=rst1.getString(2)%></td>
	             <td><%=rst1.getString(3)%></td>
		         <td><%=rst1.getString(4)%></td>
	             <td><%=rst1.getString(5)%></td>
		         <td><%=rst1.getString(6)%></td>
                 <td><%=rst1.getString(7)%></td>
                 <td><%=rst1.getString(8)%></td>
                 <td><%=rst1.getString(9)%></td>
                  <td><%=rst1.getString(10)%></td>
		     </tr>
		     <%} %> 
	     </table>
</div> 
</body>
</html>