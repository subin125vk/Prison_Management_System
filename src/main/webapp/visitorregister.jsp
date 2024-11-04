<%@page import="visitor.Add_visitorDao"%>
<jsp:useBean id="obj" class="visitor.Add_visitor">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int i=Add_visitorDao.register(obj);  
if(i>0)  
	response.sendRedirect("Admin_dashboard.jsp");   
  
%>  