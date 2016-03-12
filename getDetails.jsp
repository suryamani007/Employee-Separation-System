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
<title>Insert title here</title>
</head>
<body>
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
ResultSet rst1=st.executeQuery("select * from transport where emp_id='"+e+"'");

  int d1=0;
 while(rst1.next())
 {
 d1 = rst1.getInt(3);
 }
ResultSet rst2=st.executeQuery("select * from account where emp_id='"+e+"'");

  int d2=0;
 while(rst2.next())
 {
 d2 = rst2.getInt(3);
 }
ResultSet rst3=st.executeQuery("select * from research where emp_id='"+e+"'");

   int d3=0;
 while(rst3.next())
 {
 d3 = rst3.getInt(3);
 }
 %>
 
 <center> clearance for employee id <%=e%> </center>
     <center>
        <table border="1">
             <tr>
                  <th>Transport</th>
                  <th>Account</th>
                  <th>R&D</th>
              </tr>
              
              <tr>
                    <td><%=d1%></td>
                     <td><%=d2%></td>
                     <td><%=d3%></td>
              </tr>
                     
          </table>
      </center>
      
           <center>
               <table>
    
                    <tr>
                       <td>
                           <form action="approval.jsp?emp_id=<%=e%>&sep_id=<%=s2 %> " method="post">
                              <input type="submit" value="approve"/>
                           </form>
                        </td>
                       <td> 
                           <form action="NotApproved.jsp?emp_id=<%=e%>&sep_id=<%=s2 %>" method="post">
                              <input type="submit" value="don't Approve"/>
                           </form> 
                        </td>
                      </tr>
                    </table></br></br>
                    <form action="hrhome.jsp">
             <input type="submit" value="Return To HomePage"/>
            </form>
                  </center>
                        

</body>
</html>