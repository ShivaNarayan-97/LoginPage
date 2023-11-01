<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Register Page</title>
		
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
			integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
			crossorigin="anonymous">
		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	</head>
	<body style="background-image: linear-gradient(to right bottom, #051937, #004d7a, #008793, #00bf72, #a8eb12); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
	
		<!-- Navbar -->
	
		<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
	
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
	
					<li class="nav-item"><a class="nav-link" href="register.jsp">Register</a>
					</li>
				</ul>
			</div>
		</nav>
	
		<div class="container">
			<div class="row mt-5">
				<div class="col-md-4 offset-md-4 ">
					<div class="card">
						<div class="card-header text-center c-head text-black">
							<i class="fa fa-user-circle-o fa-2x"></i>
							<h5>Registration Page</h5>
						</div>
						
						<%
							String regMsg = (String) session.getAttribute("reg-msg");
							
							if(regMsg != null)
							{
						%>
								
								<div class="alert alert-success" role="alert">
								  <%= regMsg %> Login...<a href="login.jsp">Click Here</a>
								</div>
								
						<%
							session.removeAttribute("reg-msg");
							}
						%>
						
						<div class="card-body">
							<form action="register" method="post">
								
								<div class="form-group">
									<label for="exampleInputEmail1">Enter Full Name</label> <input
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="uname">
								</div>
							
								<div class="form-group">
									<label for="exampleInputEmail1">Enter Email address</label> <input
										type="email" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="email">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Enter Password</label> <input
										type="password" class="form-control" id="exampleInputPassword1"
										name="password">
								</div>
								
								<button type="submit" class="btn btn-primary btn-block badge-pill">Register</button>
								
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	
	
	
	
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	</body>
</html>