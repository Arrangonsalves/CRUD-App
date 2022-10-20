<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%@page import="user.UserDao,user.User"%>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">CRUD APP</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="index1.jsp">Home</a></li>
				<li><a href="adduserform.jsp">Create</a></li>
				<li><a href="viewusers.jsp">Read</a></li>
				<li><a href="edituser.jsp">Update</a></li>
				<li><a href="deleteuser.jsp">Delete</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">

				<li><a href="index.jsp"><span
						class="glyphicon glyphicon-log-in"></span> Logout</a></li>
			</ul>
		</div>
	</nav>
	<%
	String id = request.getParameter("id");
	User u = UserDao.getRecordById(Integer.parseInt(id));
	%>

	<h1>Edit Form</h1>
	<form action="edituser.jsp" method="post">
		<input type="hidden" name="id" value="<%=u.getId()%>" />
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value="<%=u.getName()%>" /></td>
			</tr>
			<!--<tr>
				<td>Password:</td>
				<td><input type="password" name="password"
					value="<%=u.getPassword()%>" /></td>
			</tr>-->
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" value="<%=u.getEmail()%>" /></td>
			</tr>
			<tr>
				<td>Sex:</td>
				<td><input type="radio" name="gender" value="male" />Male <input
					type="radio" name="gender" value="female" />Female</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td><select name="country">
						<option>India</option>
						<option>United States</option>
						<option>Pakistan</option>
						<option>Afghanistan</option>
						<option>Berma</option>
						<option>Other</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Edit User" /></td>
			</tr>
		</table>
	</form>

</body>
</html>
