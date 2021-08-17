<%-- 
    Document   : delete
    Created on : 15 Feb, 2019, 8:07:15 AM
    Author     : 3P
--%>

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
        <% String rid1=request.getParameter("rid");
        int id=Integer.parseInt(rid1);
        Connection con=null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pranay","pranay123");
            Statement st=con.createStatement();
            int i=st.executeUpdate("delete from eventreg where REGISTRATIONID="+id+"");
            if(i>0)
            {
                out.println("Record deleted successfully");
            }
            else
            {
                out.println("Invalid Registration Id");
            }
            %>
    </body>
</html>
