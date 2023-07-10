<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login | Blood Donation System</title>
<%@include file="/commonfile/headerfiles.html"%>
</head>
<style>
body {
	font-size: 14px;
	color: #fff;
	font-size: 14px
}

.simple-login-container {
	width: 500px;
	max-width: 100%;
	margin: 50px auto;
}

.simple-login-container .btn-login {
	background-color: #FF5964;
	color: #fff;
}

a {
	color: #fff;
}

.member_login {
	padding: 15px;
}

.heading {
	margin: 5px auto;
	text-shadow: 2px 2px 4px #000000;
	font-family: Cambria;
	font-size: 85px;
	color: #fff;
}
</style>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
%>
	<%
	String message = (String)request.getAttribute("message"); // receive data from servlet
	%>
	<%@include file="/commonfile/commonheader.html"%>
	<%if(message!= null){%>
	<h2 class="text-center text-danger fs-4 mt-3"><%=message%></h2>
	<%}%>
	<div class="container-fluid">
		<div class="container-fluid">
			<h1 class="text-center heading bg-dark mt-0">Donor Login</h1>
		</div>
		<div class="simple-login-container mt-2">
			<form method="post" action="/Blood_Donation_System/DonarLogin"
				class="needs-validation" novalidate>
				<div class="row">
					<img alt="login"
						src="/Blood_Donation_System/images/login2.jpg" 
						class="member_login" height="300px">
				</div>
				<div class="row mt-2 bg-primary pb-2 rounded">
					<div class="col-md-12 form-group">
					<label for="userId" class="text-dark fs-5">Enter Your Donor Name</label>
						<input type="text" class="form-control" id="donarname"
							name="donarname" placeholder="Enter your name" required="required">
					</div>
					<div class="invalid-feedback">Please Enter Your Name</div>
				</div>
				<div class="row mt-0 bg-primary pb-2 rounded">
					<div class="col-md-12 form-group">
					<label for="userpassword" class="text-dark fs-5">Enter Your Password</label>
						<input type="password" id="userpassword"
									name="userpassword" placeholder="Enter your password"
							class="form-control" required="required">
						<div class="invalid-feedback">Please Enter Your Password</div>
					</div>
				</div>
				<div class="row mt-2">
					<div class="d-grid">
						<button class="btn btn-danger fs-5" type="submit">Submit</button>
					</div>
				</div>
				<h6 class="text-center text-dark">Don't have an account <a href="/Blood_Donation_System/donar/registration.jsp" class="text-decoration-none text-warning">Register here</a></h6>
			</form>
		</div>
	</div>
	<!-- manual  -->


	<!-- footer -->
	<div class="container-fluid p-2">
		<%@include file="/commonfile/commonfooter.html"%>
	</div>

	<%@include file="/commonfile/scriptfiles.html"%>
</body>
</html>