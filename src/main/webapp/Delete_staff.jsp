<%@page import="staff.Add_staffDao"%>
<jsp:useBean id="u" class="staff.Add_staff"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
Add_staffDao.delete(u);  
response.sendRedirect("View_staff.jsp");  
%>  