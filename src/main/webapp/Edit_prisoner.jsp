<%@page import="prisoner.Add_prisonerDao"%>
<jsp:useBean id="u" class="prisoner.Add_prisoner"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=Add_prisonerDao.update(u);  
response.sendRedirect("View_prisoner.jsp");  
%>  