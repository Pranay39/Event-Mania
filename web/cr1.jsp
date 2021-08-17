
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
            String emailid=request.getParameter("email");
            
            
        Connection con=null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pranay","pranay123");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from eventreg where emailid='"+emailid+"'");
            
if(!rs.next())
{
    out.print("Record not found");
}
else
{
            %>
            <center>
            <table border=1 cellspacing=0 cellpadding="15">
               
                    <tr>
                    <th>Registration Id</th>
                            <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                     <th>College Name</th>
                                    <th>Contact No</th>
                                    <th>Gender</th>
                                    <th>Event Name</th>
                                    
                    </tr>
                    <% while(rs.next())
                    {
                        %>
                  
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                        <td><%=rs.getString(7)%></td>
                        <td><%=rs.getString(8)%></td>
                      
                        </tr>
                    
                   
                        <%
                            }
}
                        %>
                 
            
            </table>
            </center>
            </body>
</html>

