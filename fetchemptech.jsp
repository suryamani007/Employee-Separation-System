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
<title>Fetch Employee</title>
</head>
<body>
<%
String tech=request.getParameter("technology");
Myconnection mc=new Myconnection();
Connection con=mc.getConnected();
Statement st=con.createStatement();
ResultSet rst=st.executeQuery("select * from emp_details where technology='"+tech+"'");
%>
        <table border="1" cellpadding="10" cellspacing="5">
                <caption>
                   <font size="9"color="blue">Employee Details</font><br><br>
                </caption>
             <tr>
                  <th  style="background-color:cyan;">Emp_id</th>
                  <th  style="background-color:cyan;">Emp_name</th>
                  <th  style="background-color:cyan;">Email_id</th>
                  <th  style="background-color:cyan;">Department</th>
                  <th  style="background-color:cyan;">Address</th>
                  <th  style="background-color:cyan;">Joining_Date</th>
                  <th  style="background-color:cyan;">Project_Name</th>
                  <th  style="background-color:cyan;">Salary</th>
                  <th  style="background-color:cyan;">Contact_no</th>
               
               </tr>
		    <% 
	while(rst.next())
 {
%>
		     <tr>
		     
		         <td><%=rst.getInt(1)%></td>
		         <td><%=rst.getString(2)%></td>
	             <td><%=rst.getString(3)%></td>
		         <td><%=rst.getString(4)%></td>
	             <td><%=rst.getString(5)%></td>
		         <td><%=rst.getString(6)%></td>
                 <td><%=rst.getString(7)%></td>
                 <td><%=rst.getString(8)%></td>
                 <td><%=rst.getString(9)%></td>
		     </tr>
		     <%} %> 
	     </table>
</center>
</body>
</html>