<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.login-form {
	width: 340px;
	margin: 50px auto;
}

.login-form form {
	margin-bottom: 15px;
	background: #f7f7f7;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}

.login-form h2 {
	margin: 0 0 15px;
}

.form-control, .btn {
	min-height: 38px;
	border-radius: 2px;
}

.btn {
	font-size: 15px;
	font-weight: bold;
}
</style>
</head>
<body>
	<%
	String profile_msg = (String) request.getAttribute("profile_msg");
	if (profile_msg != null) {
		out.print(profile_msg);
	}
	String login_msg = (String) request.getAttribute("login_msg");
	if (login_msg != null) {
		out.print(login_msg);
	}
	%>
	<br />
	<div class="login-form">
		<form action="loginprocess.jsp" method="post">
			<h2 class="text-center">Log in</h2>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Username"
					required="required" name="email">
			</div>
			<div class="form-group">
				<input type="password" class="form-control" placeholder="Password"
					required="required" name="pass">
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-block">Log
					in</button>
			</div>
			<div class="clearfix">
				<label class="pull-left checkbox-inline"><input
					type="checkbox"> Remember me</label> <a href="#" class="pull-right">Forgot
					Password?</a>
			</div>
		</form>
		<p class="text-center">
			<a href="#">Create an Account</a>
		</p>
	</div>
</body>
</html>