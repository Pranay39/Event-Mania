<%-- 
    Document   : fetch
    Created on : 15 Feb, 2019, 8:27:33 AM
    Author     : 3P
--%>

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
        <% //String eventname=request.getParameter("ename");
        
        Connection con=null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pranay","pranay123");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("Select * from event2 where EVENTTYPE='Inter-College'");
            
if(!rs.next())
{
    out.print("No record found");
}
else
{
            %><center>
            <table border="1" cellpadding="10"  cellspacing="0">
                    <tr>
                        <th>Event id</th>
                    <th>Event name</th>
                            <th>Event type</th>
                                    <th>Venue</th>
                                    <th>Department</th>
                                    <th>Date</th>
                                    <th>Reporting time</th>
                                    <th>Fees</th>
                                    <th>Rules</th>
                                    
                    </tr>
                  
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                        <td><%=rs.getString(7)%></td>
                        <td><%=rs.getString(8)%></td>
                        <td><%=rs.getString(9)%></td>
                        </tr>
            
                   
                        <%
                            }
                        %>
    </center>
            </table>
            </body>
</html>
                     