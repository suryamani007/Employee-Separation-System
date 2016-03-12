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
ResultSet res=st.executeQuery("select * from add_project");

  %>
  <h2 class="menu-name">Project List</h2>
          <table class="server-table">
                
		  <tr>
			<th>Project No.</th>
			<th>Project Name</th>
			<th>Technology</th>
			<th>Yr.of Exp.</th>
			<th></th>
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
		    <td><a href="applyprojform.jsp">APPLY</a></td>
		</tr>
		<%} %>
          </table>
<form style="text-align: center;" action="employee.jsp">
             <input type="submit" class="submit-button" value="Return Home"/>
            </form>
</div>
</body>
</html>