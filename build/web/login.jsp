<%-- 
    Document   : login
    Created on : 22 Feb, 2019, 7:23:48 PM
    Author     : 3P
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String emailid=request.getParameter("unm");
            String pass=request.getParameter("pass");
        Connection con;
       Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pranay","pranay123");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select firstname, lastname from users where email='"+emailid+"' and password='"+pass+"' ");
            
if(!rs.next())
{
    out.print("Invalid username or password");
}
else
{
    out.print("Welcome     "+rs.getString(1)); %> &nbsp;<%
   out.print(rs.getString(2));
%>
<br>
<a href="credentials.html">View my credentials</a>
   <%
}
%>

                    
    </body>
</html>
