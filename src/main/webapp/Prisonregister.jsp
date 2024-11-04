<%@page import="prisoner.Add_prisonerDao"%>  
<jsp:useBean id="obj" class="prisoner.Add_prisoner">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int i=Add_prisonerDao.register(obj);  
if(i>0)  
	response.sendRedirect("Jailor_dashboard.jsp");   
  
%>  