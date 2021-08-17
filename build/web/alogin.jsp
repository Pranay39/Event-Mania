<%-- 
    Document   : alogin
    Created on : 28 Feb, 2019, 5:15:08 PM
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
            String n=request.getParameter("unm");
            String p=request.getParameter("pass");
            
            if( n.equals ("admin") && p.equals("123"))
            {
                session.setAttribute("name","pass");
                
                response.sendRedirect("muloperation.html");
            }
            
            else
            {
                out.print("Try again to login");
            }
          %>
    </body>
</html>
