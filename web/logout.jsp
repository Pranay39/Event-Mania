<%-- 
    Document   : logout
    Created on : 28 Feb, 2019, 7:00:26 PM
    Author     : 3P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
            <%
    session.setAttribute("userid", null);
    session.invalidate();
    response.sendRedirect("alogin.html");
    %>
    </body>
</html>
