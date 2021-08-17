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
            String userid=request.getParameter("uid");
            int uid1=Integer.parseInt(userid);
             
            String firstname=request.getParameter("fnm");
            String lastname=request.getParameter("lnm"); 
            String dept1=request.getParameter("dept");
            String desg1=request.getParameter("desg");
            
            String yr1=request.getParameter("yr");
            
            
            String emailid=request.getParameter("email");
            String pass1=request.getParameter("pass");
           
          //  try
            //{
            
             Connection con=null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pranay","pranay123");
            Statement st=con.createStatement();
            int i=st.executeUpdate("insert into adduser values("+uid1+",'"+firstname+"','"+lastname+"','"+dept1+"','"+desg1+"','"+yr1+"','"+emailid+"','"+pass1+"')");
            if(i>0)
            {
                out.print("User added succeefully");
                
               /* response.sendRedirect("login.html");*/
            }
            else
            {
                out.print("User not added try again");
            }
        // }
         //   catch(Exception e)
           // {
           // out.print("not regi");
           // }
            %>
            
           
    </body>
</html>
