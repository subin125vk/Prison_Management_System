 <%@page import="staff.Add_staffDao"%>  
    <jsp:useBean id="j" class="staff.Add_staff"></jsp:useBean>  
    <jsp:setProperty property="*" name="j"/>  
      
    <%  
    int i=Add_staffDao.save(j);  
    if(i>0){  
    response.sendRedirect("Add_staffsuccess.jsp");  
    }else{  
    response.sendRedirect("Add_stafferror.jsp");  
    }  
    %> 