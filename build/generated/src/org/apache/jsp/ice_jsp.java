package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class ice_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

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
            
      out.write("\n");
      out.write("            <center>\n");
      out.write("             <table border=1 cellspacing=0 cellpadding=\"15\"><tbody bgcolor=#f1e3dd>\n");
      out.write("                    \n");
      out.write("                 <h1>INTRA-COLLEGE EVENTS</b></h1>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("              <!--      <tr><td><a href=\"morya.html\">Morya 2K19</a></td>\n");
      out.write("    <td><a href=\"gathering.html\">Annual Gathering</a></td></tr>\n");
      out.write("\t\n");
      out.write("<tr><td><a href=\"studconf.html\">Student Conference</a></td>\n");
      out.write("    <td><a href=\"avishkar.html\">Avishkar</a></td></tr>\t!-->\n");
      out.write("              \n");
      out.write("              \n");
      out.write("              <th>Event id</th>\n");
      out.write("                            <th>Event Name</th>\n");
      out.write("                                    <th>Event Type</th>\n");
      out.write("                                    <th>Venue</th>\n");
      out.write("                                     <th>Dpartment</th>\n");
      out.write("                                    <th>Date</th>\n");
      out.write("                                    <th>Reporting Time</th>\n");
      out.write("                                    <th>Fees</th>\n");
      out.write("                                    <th>Rules</th>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("                         \n");
      out.write("                        <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString(7));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString(8));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString(9));
      out.write("</td>\n");
      out.write("                    \n");
      out.write("                        \n");
      out.write("                         \n");
      out.write("             </tr>\n");
      out.write("\n");
      out.write("                   \n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                 </tbody>\n");
      out.write("            </table>\n");
      out.write("                 <br>\n");
      out.write("                  <a href=eventreg.html><b>Register Here</b></a>\n");
      out.write("            </center>\n");
      out.write("            </body>\n");
      out.write("</html>\n");
      out.write("                     ");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
