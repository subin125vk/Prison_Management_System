<%@page import="visitor.Add_visitorDao"%>
<jsp:useBean id="u" class="visitor.Add_visitor"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
Add_visitorDao.delete(u);  
response.sendRedirect("View_visitor.jsp");  
%>  