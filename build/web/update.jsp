<%@page import="java.sql.*"%>

<%
    String id=request.getParameter("ei");
    int n=Integer.parseInt(id);
    String name=request.getParameter("ename");
    String type=request.getParameter("etype");
    String venue=request.getParameter("evenue");
    String date=request.getParameter("edate");
    String time=request.getParameter("etime");
    String fees=request.getParameter("efees");
    int fee=Integer.parseInt(fees);
    
    
    
    
    
    Connection connection=null;
            
          Class.forName("oracle.jdbc.driver.OracleDriver");
             
          Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pranay","pranay123");
        
          Statement st=con.createStatement();
          
          int i=st.executeUpdate("update event2 set EVENTNAME='"+name+"',EVENTTYPE='"+type+"',EVENTVENUE='"+venue+"', EDATE='"+date+"', TIME='"+time+"', FEES1="+fee+"  where ID1="+n+"");
          
          
          
          if(i>0)
          {
              //session.setAttribute("userid",user);
              out.print("Event Updated Successfully");
              
             // response.sendRedirect("operation.jsp");
              
              //out.print("Registration successfull!!"+"<a href="index.html">GO to Login</a>");
          }
          else
          {
              response.sendRedirect("login1.html");
          }
          
          %>