<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="reset.css" />
<link rel="stylesheet" href="style.css" />
<title>employee page</title>
</head>
<body>
<header>
<h1>Employee Separation System</h1>
</header>
<div id="wrap-main-content" class="group">
<section class="sidebar-section">
<%
String  s1=request.getParameter("s5");
//out.print("<h2>Welcome "+ s1 + "</h2>");
out.print("Welcome   :"+s1);
 %>
</section>
 <section class="menu-section">
 <h2 class="menu-name">Menu</h2>
 <ul>
        
        <li><a href="separationform.jsp">Apply For Separation</a></li>
          
        <li><a href="viewstatus.jsp">View Status</a></li>
           
        <li><a href="projectlist.jsp">Check For Option</a></li>
          
  </ul>
  </section>
  </div>
        
</body>
</html>