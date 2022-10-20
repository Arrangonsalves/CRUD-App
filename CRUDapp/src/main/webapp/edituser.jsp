<%@page import="user.UserDao"%>  
<jsp:useBean id="u" class="user.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDao.update(u);  
response.sendRedirect("viewusers.jsp");  
%>  