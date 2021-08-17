<%-- 
    Document   : addevent
    Created on : 28 Feb, 2019, 2:45:46 PM
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
             String id=request.getParameter("eid");
            int id1=Integer.parseInt(id);
             
            String eventname=request.getParameter("ename");
            String eventtype=request.getParameter("etype"); 
            
            String eventvenue=request.getParameter("evenue");
            String dept1=request.getParameter("dept");
            
            String date=request.getParameter("edate");
            String time=request.getParameter("etime");
            String fees=request.getParameter("fees");
            int fees1=Integer.parseInt(fees);
            String rule=request.getParameter("rule");
           
           // try
            //{
            
             Connection con=null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pranay","pranay123");
            Statement st=con.createStatement();
            int i=st.executeUpdate("insert into event2 values("+id1+",'"+eventname+"','"+eventtype+"','"+eventvenue+"','"+dept1+"','"+date+"','"+time+"',"+fees1+",'"+rule+"')");
            if(i>0)
            {
                out.print("EVENT ADDED");
                
               /* response.sendRedirect("login.html");*/
            }
            else
            {
                out.print("NOT ADDED");
            }
         //}
           // catch(Exception e)
            //{
            //out.print("not regi");
           // }
            //%>
            
           
    </body>
</html>
