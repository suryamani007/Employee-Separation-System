<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="reset.css" />
<link rel="stylesheet" href="style.css" />
<title>hrHome page</title>
</head>
<body>
<header>
<h1>Employee Separation System</h1>
</header>
<div id="wrap-main-content" class="group">
<section class="sidebar-section">
<% 
String  s1=request.getParameter("s4");
out.print("<h2>Welcome "+ s1 + "</h2>");
%>
 </section>
 <section class="menu-section">
 <h2 class="menu-name">Menu</h2>
 <ul>
         <li><a href="separationrecord.jsp">Separation Records</a></li>
          
         <li><a href="totalempdetails.jsp">Employees in System</a></li>
         
          <li><a href="xyz.jsp">Allotment</a></li>
          
         <li><a href="addproject.jsp">Add Project</a></li>
        
          
 </ul>
 </section>
 </div>

</body>
</html>
