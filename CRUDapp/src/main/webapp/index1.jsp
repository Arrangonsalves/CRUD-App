<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CRUD APP</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link
	href='//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'
	rel='stylesheet' />
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<style>
.btn {
	border: none;
	border-radius: 5px;
	color: #fff;
	text-transform: uppercase;
	padding-bottom: 15px;
	position: relative;
	background-image: linear-gradient(to top, #262626 0px, #404040 10px, #262626 10px, #333
		100%);
}

.btn:hover {
	color: #fff;
}

.btn:after {
	content: "";
	width: 0;
	height: 10px;
	position: absolute;
	bottom: 0;
	left: 0;
	border-radius: 0 0 5px 5px;
	transition: all 0.35s ease 0s;
}

.btn:hover:after {
	width: 100%;
}

.btn.btn-sm {
	padding-bottom: 10px;
	background-image: linear-gradient(to top, #262626 0px, #404040 8px, #262626 8px, #333 100%
		);
}

.btn.btn-sm:after {
	height: 8px;
}

.btn.btn-xs {
	padding-bottom: 8px;
	background-image: linear-gradient(to top, #262626 0px, #404040 6px, #262626 6px, #333 100%
		);
}

.btn.btn-xs:after {
	height: 6px;
}

.btn.red:after {
	background: #ff6e6e;
}

.btn.blue:after {
	background: #5cbcf6;
}

.btn.orange:after {
	background: #ef965c;
}

.btn.green:after {
	background: #7ad79a;
}

@media only screen and (max-width: 767px) {
	.btn {
		margin-bottom: 20px;
	}
}

License



 



Terms
.span-or {
	display: block;
	position: absolute;
	left: 50%;
	top: -2px;
	margin-left: -25px;
	background-color: #fff;
	width: 50px;
	text-align: center;
}

.hr-or {
	background-color: #cdcdcd;
	height: 1px;
	margin-top: 0px !important;
	margin-bottom: 0px !important;
}

footer.nb-footer {
	background: #222;
	border-top: 4px solid #b78c33;
}

footer.nb-footer .about {
	margin: 0 auto;
	margin-top: 40px;
	max-width: 1170px;
	text-align: center;
}

footer.nb-footer .about p {
	font-size: 13px;
	color: #999;
	margin-top: 30px;
}

footer.nb-footer .about .social-media {
	margin-top: 15px;
}

footer.nb-footer .about .social-media ul li a {
	display: inline-block;
	width: 45px;
	height: 45px;
	line-height: 45px;
	border-radius: 50%;
	font-size: 16px;
	color: #b78c33;
	border: 1px solid rgba(255, 255, 255, 0.3);
}

footer.nb-footer .about .social-media ul li a:hover {
	background: #b78c33;
	color: #fff;
	border-color: #b78c33;
}

footer.nb-footer .footer-info-single {
	margin-top: 30px;
}

footer.nb-footer .footer-info-single .title {
	color: #aaa;
	text-transform: uppercase;
	font-size: 16px;
	border-left: 4px solid #b78c33;
	padding-left: 5px;
}

footer.nb-footer .footer-info-single ul li a {
	display: block;
	color: #aaa;
	padding: 2px 0;
}

footer.nb-footer .footer-info-single ul li a:hover {
	color: #b78c33;
}

footer.nb-footer .footer-info-single p {
	font-size: 13px;
	line-height: 20px;
	color: #aaa;
}

footer.nb-footer .copyright {
	margin-top: 15px;
	background: #111;
	padding: 7px 0;
	color: #999;
}

footer.nb-footer .copyright p {
	margin: 0;
	padding: 0;
}
</style>
<body>
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
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<a href="adduserform.jsp" class="btn btn-lg red">Create</a>
			</div>
			<div class="col-sm-3">
				<a href="viewusers.jsp" class="btn btn-lg red">Read</a>
			</div>
			<div class="col-sm-3">
				<a href="edituser.jsp" class="btn btn-lg red">Update</a>
			</div>
			<div class="col-sm-3">
				<a href="deleteuser.jsp" class="btn btn-lg red">Delete</a>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


	<footer class="nb-footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="about">
						<img src="images/logo.png" class="img-responsive center-block"
							alt="">

						<div class="social-media">
							<ul class="list-inline">
								<li><a href="#" title=""><i
										class="fa fa-facebook"></i></a></li>
								<li><a href="#" title=""><i
										class="fa fa-twitter"></i></a></li>
								<li><a href="#" title=""><i
										class="fa fa-google-plus"></i></a></li>
								<li><a href="#" title=""><i
										class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-info-single">
						<h2 class="title">Help Center</h2>
						<ul class="list-unstyled">
							<li><a href="http://www.nextbootstrap.com/" title=""><i
									class="fa fa-angle-double-right"></i> How to Pay</a></li>
							<li><a href="http://www.nextbootstrap.com/" title=""><i
									class="fa fa-angle-double-right"></i> FAQ's</a></li>
							<li><a href="http://www.nextbootstrap.com/" title=""><i
									class="fa fa-angle-double-right"></i> Sitemap</a></li>
							<li><a href="http://www.nextbootstrap.com/" title=""><i
									class="fa fa-angle-double-right"></i> Delivery Info</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-info-single">
						<h2 class="title">Customer information</h2>
						<ul class="list-unstyled">
							<li><a href="http://www.nextbootstrap.com/" title=""><i
									class="fa fa-angle-double-right"></i> About Us</a></li>
							<li><a href="http://www.nextbootstrap.com/" title=""><i
									class="fa fa-angle-double-right"></i> FAQ's</a></li>
							<li><a href="http://www.nextbootstrap.com/" title=""><i
									class="fa fa-angle-double-right"></i> Sell Your Items</a></li>
							<li><a href="http://www.nextbootstrap.com/" title=""><i
									class="fa fa-angle-double-right"></i> Contact Us</a></li>
							<li><a href="http://www.nextbootstrap.com/" title=""><i
									class="fa fa-angle-double-right"></i> RSS</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-info-single">
						<h2 class="title">Security & privacy</h2>
						<ul class="list-unstyled">
							<li><a href="http://www.nextbootstrap.com/" title=""><i
									class="fa fa-angle-double-right"></i> Terms Of Use</a></li>
							<li><a href="http://www.nextbootstrap.com/" title=""><i
									class="fa fa-angle-double-right"></i> Privacy Policy</a></li>
							<li><a href="http://www.nextbootstrap.com/" title=""><i
									class="fa fa-angle-double-right"></i> Return / Refund Policy</a></li>
							<li><a href="http://www.nextbootstrap.com/" title=""><i
									class="fa fa-angle-double-right"></i> Store Locations</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-info-single">
						<h2 class="title">CRUD</h2>
						<p>CRUD apps are the user interface that we use to interact with databases through APIs. 
						It is a specific type of application that supports the four basic operations: Create, read, 
						update, delete. Broadly, CRUD apps consist of the database, the user interface, and the APIs</p>

					</div>
				</div>
			</div>
		</div>

		<section class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<p>Copyright © 2017. Your Company.</p>
					</div>
					<div class="col-sm-6"></div>
				</div>
			</div>
		</section>
	</footer>
</body>
</html>