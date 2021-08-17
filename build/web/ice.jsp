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
        <%
        Connection con=null;
       Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pranay","pranay123");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("Select * from event2 where EVENTTYPE='Intra-College'" );
            
if(!rs.next())
{
    out.print("No record found");
}
else
{
            %>
            <center>
             <table border=1 cellspacing=0 cellpadding="15"><tbody bgcolor=#f1e3dd>
                    
                 <h1>INTRA-COLLEGE EVENTS</b></h1>
                    
                    
              <!--      <tr><td><a href="morya.html">Morya 2K19</a></td>
    <td><a href="gathering.html">Annual Gathering</a></td></tr>
	
<tr><td><a href="studconf.html">Student Conference</a></td>
    <td><a href="avishkar.html">Avishkar</a></td></tr>	!-->
              
              
              <th>Event id</th>
                            <th>Event Name</th>
                                    <th>Event Type</th>
                                    <th>Venue</th>
                                     <th>Dpartment</th>
                                    <th>Date</th>
                                    <th>Reporting Time</th>
                                    <th>Fees</th>
                                    <th>Rules</th>

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
                 </tbody>
            </table>
                 <br>
                  <a href=eventreg.html><b>Register Here</b></a>
            </center>
            </body>
</html>
                     