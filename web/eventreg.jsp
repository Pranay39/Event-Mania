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
             
             
            String firstname=request.getParameter("n1");
            String lastname=request.getParameter("n2"); 
            String email=request.getParameter("e1");
            String collegename=request.getParameter("c1");
            
            String cno=request.getParameter("cn1");
            int cno1=Integer.parseInt(cno);
            
            String gender=request.getParameter("g1");
            String ename1=request.getParameter("ename");
           
          //  try
            //{
            
             Connection con=null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pranay","pranay123");
            Statement st=con.createStatement();
            int i=st.executeUpdate("insert into eventreg values(registrationid.nextval,'"+firstname+"','"+lastname+"','"+email+"','"+collegename+"',"+cno1+",'"+gender+"','"+ename1+"')");
            if(i>0)
            {
                out.print("You are succesfully registered for this event");
                
               /* response.sendRedirect("login.html");*/
            }
            else
            {
                out.print("Not regsistered");
            }
        // }
         //   catch(Exception e)
           // {
           // out.print("not regi");
           // }
            %>
            
           
    </body>
</html>
