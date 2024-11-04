<%@page import="db.Database"%>
<%@ page import="java.sql.*"%>
<%-- <%
if (session.getAttribute("session") != null) {
response.sendRedirect("AdminHome.jsp");
}
%> --%>
<%
String dbemail, dbpassword;
String lemail,lpassword;
lemail = request.getParameter("email");
lpassword = request.getParameter("txtPassword");

if (lemail.equals("Admin123@gmail.com") && lpassword.equals("Admin123@")) {
session.setAttribute("session", lemail);
      response.sendRedirect("Admin_dashboard.jsp");
  }
else{

try {
Class.forName(Database.driver);
Connection con = DriverManager.getConnection(Database.connectionUrl,Database.username,Database.password);
if (request.getParameter("button") != null) {

lemail = request.getParameter("email");
lpassword = request.getParameter("txtPassword");
PreparedStatement prepare = null;
prepare = con.prepareStatement("select * from jailor where email=? AND txtPassword=?");
prepare.setString(1, lemail);
prepare.setString(2, lpassword);
ResultSet rs = prepare.executeQuery();
if (rs.next()) {
dbemail = rs.getString("email");
dbpassword = rs.getString("txtPassword");

if (lemail.equals(dbemail) && lpassword.equals(dbpassword)) {
session.setAttribute("session", dbemail);
response.sendRedirect("Jailor_dashboard.jsp");
}
/* if (request.getParameter("email").equals("Admin123#@gmail.com") && request.getParameter("password").equals("Admin123#")) {
/* /* session.setAttribute("session", dbemail);
 */ /* response.sendRedirect("AdminHome.jsp");
} */



} else {
request.setAttribute("errorMsg", "Invalid email or password");
RequestDispatcher rd = request.getRequestDispatcher("/Prison_login.jsp");
rd.forward(request, response);
}
con.close();
}
} catch (Exception e) {
out.println(e);
}
}
%>