<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Status</title>
<link rel="stylesheet" href="reset.css" />
<link rel="stylesheet" href="style.css" />
</head>
<body>
<header>
<h1>Employee Separation System</h1>
</header>
<div id="wrap-main-content" class="group">
<h2 class="menu-name">View Status</h2>
<form action="getstatus.jsp">
<section class="form-section">

<label for="sepid">Enter Separation Id &#8594;</label><br/>
<input id="sepid" type=text  name="sepid" required placeholder="Enter Separation Id"/>

<input type="submit" class="submit-button" value="submit">

</section>
</form> 

<form style="text-align: center;" action="employee.jsp">
             <input type="submit" class="submit-button" value="Return Home"/>
            </form>
</div>
</body>
</html>