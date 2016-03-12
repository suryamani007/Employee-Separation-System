<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>
WELCOME TO E-SEPARATION
</title>
<head>
<script>
function validate()
{ 
	if(document.forms.login.userid.value.trim()=="")
	{
		alert("Type your User Id");
		return false;
	}
	else if(document.forms.login.password.value.trim()=="")
	{
		alert("Type your Password");
		return false;
	}
	else if(document.forms.login.usertype.value=="SelectUserType")
	{
		alert("Please Select User Type");
		return false;
	}
}
</script>
<link href="login.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
   <font color="BLUE"><h2>EMPLOYEE-SEPARATION</h2></font>
    <div class="logo" >
    </div>
       
        <div id="container">
        
           <form action="checkuser.jsp" method="post" id="login"> 
         <pre>
               Username <input type="text" name="userid"  id="user" placeholder="Enter User Name"/></br>
               Password <input type="password" name="password"  id="pass" placeholder="Enter Password"/></br>
               UserType <select name="Usertype" id="usertype"> 
                        <option value="selectusertype">Select User Type</option>
                        <option value="employee">Employee</option>
                        <option value="hr">HR</option>
                        </select>
                        <input type="checkbox" name="remember" id="remember"><label for="remember" id="rem">Remember Me</label>
                        <input type="submit" onclick="validate()" value="Login"  id="login"> <input type="reset" value="Reset" id="reset"/>
          </pre>
                       <hr id="hr">
          <pre>  
                <a href="index1.jsp" id="forgot">Forgot Password</a>
           </pre>
           
        </div>
       </form>
</center>
</body>
</html>
