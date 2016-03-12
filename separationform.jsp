<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>separation form</title>
<link rel="stylesheet" href="reset.css" />
<link rel="stylesheet" href="style.css" />
</head>
<body>
<header>
<h1>Employee Separation System</h1>
</header>
<div id="wrap-main-content" class="group">
<h2 class="menu-name">Separation Form</h2>
<form action="FormSubmit.jsp">
<section class="form-section">

<label for="emp_id">Employee ID &#8594;</label><br/>
<input id="emp_id" type=text  name="emp_id" required placeholder="Enter Id"/>

<label for="emp_name">Employee Name &#8594;</label><br/>
<input id="emp_name" type=text  name="emp_name" required placeholder="Enter Name"/>

<label for="emp_email">Email &#8594;</label><br/>
<input id="emp_email" type=text  name="email_id" required placeholder="Enter Email ID"/>

<label for="emp_sep_reason">Separation Reason &#8594;</label><br/>
<textarea id="emp_sep_reason" rows="5" cols="30"  name="reason"></textarea>
 
<label for="emp_address">Address &#8594;</label><br/>
<textarea id="emp_address" rows="5" cols="30"  name="address"></textarea>
 
<label for="emp_cpn">Current Project No &#8594;</label><br/>
<input id="emp_cpn" type=text  name="current_projectno" required placeholder="Enter Current Project No."/>
 
<label for="emp_contact">Contact No &#8594;</label><br/>
<input id="emp_contact" type=text  name="conno" required placeholder="Enter Contact No. "/>

<input type="submit" class="submit-button" value="Submit">

</section>
</form> 

</div>
</body>
</html>