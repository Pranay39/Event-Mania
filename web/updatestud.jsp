<%@page import="java.sql.*"%>

<%
    String email=request.getParameter("email");
    String fname1=request.getParameter("fname");
    String lname1=request.getParameter("lname");
    String stream=request.getParameter("strm");
    String year=request.getParameter("yr");
    String pass1=request.getParameter("pass");
    
    
    
    
    
    Connection connection=null;
            
          Class.forName("oracle.jdbc.driver.OracleDriver");
             
          Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pranay","pranay123");
        
          Statement st=con.createStatement();
          
          int i=st.executeUpdate("update users set firstname='"+fname1+"',lastname='"+lname1+"',stream='"+stream+"','"+year+"','"+pass1+"' where eamilid='"+email+"'");
          
          
          
          if(i>0)
          {
              //session.setAttribute("userid",user);
              out.print("Student Info Updated Successfully");
              
             // response.sendRedirect("operation.jsp");
              
              //out.print("Registration successfull!!"+"<a href="index.html">GO to Login</a>");
          }
          else
          {
              response.sendRedirect("login1.html");
          }
          
          %>