<%@page import="jailor.Add_jailorDao"%>
<jsp:useBean id="u" class="jailor.Add_jailor"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=Add_jailorDao.update(u);  
response.sendRedirect("View_jailor.jsp");  
%>  