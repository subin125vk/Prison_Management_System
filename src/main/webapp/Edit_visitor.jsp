<%@page import="visitor.Add_visitorDao"%>
<jsp:useBean id="u" class="visitor.Add_visitor"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=Add_visitorDao.update(u);  
response.sendRedirect("View_visitor.jsp");  
%>  