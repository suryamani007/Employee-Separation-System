<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Apply project</title>
<link rel="stylesheet" href="reset.css" />
<link rel="stylesheet" href="style.css" />
</head>
<body>
<header>
<h1>APPLY TO PROJECT</h1>
</header>
<div id="wrap-main-content" class="group">
<h2 class="menu-name">PROJECT</h2>
<form action="projformSubmit.jsp">
<section class="form-section">

<label for="proj_no">Project No. &#8594;</label><br/>
<input id="proj_no" type=text  name="proj_no" required placeholder="Enter Proj. No"/>

<label for="proj_name">Project Name &#8594;</label><br/>
<input id="proj_name" type=text  name="proj_name" required placeholder="Enter Project Name"/>


<label for="user_id">user id &#8594;</label><br/>
<input id="user_id" type=text  name="user_id" required placeholder="Enter user id"/>

<label for="tech">Technology &#8594;</label><br/>
<input id="tech" type=text  name="tech" required placeholder="Enter Technology "/>

<label for="year">Yr. of Exp. &#8594;</label><br/>
<input id="year" type=text  name="year" required placeholder="Enter Yr. of Exp."/>


<input type="submit" class="submit-button" value="Submit">

</section>
</form> 
<form style="text-align: center;" action="hrhome.jsp">
             <input type="submit" class="submit-button" value="Return Home"/>
            </form>
</div>
<%
String proj_no=request.getParameter("proj_no");
String proj_name=request.getParameter("proj_name");
String tech=request.getParameter("tech");
string user_id=request.getParameter("user_id");
String year=request.getParameter("year");
Myconnection mc=new Myconnection();
Connection con=mc.getConnected();
Statement stmt=con.createStatement();

stmt.executeUpdate("insert into add_project values('"+proj_no+"','"+proj_name+"','"+user_id+"','"+tech+"','"+year+"')");

%>
</body>

</html>