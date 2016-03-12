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
<title>Separation Record</title>
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
ResultSet rst=st.executeQuery("select * from separation_table");
%>

   <h2 class="menu-name">Separation Records</h2>
          <table class="server-table">
          <tr>
			<th>Sep_ID</th>
			<th>Form Detail</th>
			<th>Emp Detail</th>
			<th>Check Clearance</th>
         </tr>

<%
     while(rst.next())
        {
%>
              <tr>
			      <td><%=rst.getString(8)%></td>
                  <td>
                    <form action="getformdetails.jsp?id=<%=rst.getInt(8) %>" method="post">
                       <input type="submit" style="background-color:cyan;" value="formDetail"/>
                    </form>
                   </td>
                  <td>
                    <form action="getempdetails.jsp?id=<%=rst.getInt(8) %>" method="post">
                        <input type="submit" style="background-color:cyan;" value="empDetail"/>
                     </form>
                   </td>  
                   <td>
                       <form action="getDetails.jsp?id=<%=rst.getInt(8) %>"method="post">
                        <input type="submit" style="background-color:cyan;" value="getDetail"/>
                       </form>
		          </td>
               </tr>
         <%              
            }
            %>	 
           
             </table>
             
<form style="text-align: center;" action="hrhome.jsp">
             <input type="submit" class="submit-button" value="Return Home"/>
            </form>
</div>
</body>
</html>