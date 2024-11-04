<%@page import="prisoner.Add_prisonerDao"%>
<jsp:useBean id="u" class="prisoner.Add_prisoner"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
Add_prisonerDao.delete(u);  
response.sendRedirect("View_prisoner.jsp");  
%>  