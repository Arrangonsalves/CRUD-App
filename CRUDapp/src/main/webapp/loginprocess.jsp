<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<%@page import="user.LoginDao"%>
	<jsp:useBean id="obj" class="user.LoginBean" />
	<jsp:setProperty property="*" name="obj" />
	<%
	boolean status = LoginDao.validate(obj);
	if (status) 
	{
		out.println("You are successfully logged in");
		session.setAttribute("session", "TRUE");
		%>
		<% 
		String redirectURL = "index1.jsp";
    	response.sendRedirect(redirectURL);
		%>
		<% 
	} 
	else 
	{
		out.print("Sorry, email or password error");
	%>
		<jsp:include page="index.jsp"></jsp:include>
		<%
	}
	%>
</body>
</html>