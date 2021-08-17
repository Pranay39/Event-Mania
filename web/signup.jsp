<%--
    Document   : signup
    Created on : 22 Feb, 2019, 6:33:39 PM
    Author     : 3P
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
            String firstname=request.getParameter("fnm");
            String lastname=request.getParameter("lnm");
            String stream=request.getParameter("strm");
            String year=request.getParameter("yr");
            String email=request.getParameter("email");
            String password=request.getParameter("pass");
            
             Connection con=null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pranay","pranay123");
            Statement st=con.createStatement();
            int i=st.executeUpdate("insert into users values('"+firstname+"','"+lastname+"','"+stream+"','"+year+"','"+email+"','"+password+"')");
            if(i>0)
            {
                out.print("Registration Successful");
                
               /* response.sendRedirect("login.html");*/
            }
            else
            {
                out.print("Not regsistered");
            }
            %>
    </body>
</html>
