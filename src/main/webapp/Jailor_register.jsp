<%@page import="jailor.Add_jailorDao"%>
<jsp:useBean id="obj" class="jailor.Add_jailor">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int i=Add_jailorDao.register(obj);  
if(i>0)  
	response.sendRedirect("Admin_dashboard.jsp");   
  
%>  