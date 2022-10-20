<%@page import="user.UserDao"%>  
<jsp:useBean id="u" class="user.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>  