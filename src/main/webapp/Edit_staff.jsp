<%@page import="staff.Add_staffDao"%>  
<jsp:useBean id="u" class="staff.Add_staff"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=Add_staffDao.update(u);  
response.sendRedirect("View_staff.jsp");  
%>  