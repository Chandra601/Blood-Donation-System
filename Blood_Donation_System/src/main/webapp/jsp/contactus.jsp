<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blood Donation System | ContactUs</title>
<%@include file="/commonfile/headerfiles.html"%>
<style type="text/css">
body {
	background-color: #ad9dfb;
	font-size: 14px;
	color: #fff;
	font-size: 14px
}
.note {
	text-align: center;
	height: 80px;
	background: -webkit-linear-gradient(left, #0072ff, #8811c5);
	color: #fff;
	font-weight: bold;
	line-height: 80px;
}

.form-content {
	padding: 5%;
	border: 1px solid #ced4da;
	margin-bottom: 2%;
}

.form-control {
	border-radius: 0.5rem;
}

.btnSubmit {
	border: none;
	border-radius: 1rem;
	padding: 1%;
	width: 40%;
	cursor: pointer;
	background: #0062cc;
	color: #fff;
	margin: 15px auto;
}

.p{
	font-size: 1.4rem;
	font-family: Cambria;
}

.gender {
	font-weight: bold;
	line-height: 80px;
	font-size: 20px;
	color: #36454F;
	margin-left: 15px;
}

.heading {
	margin: 5px auto;
	text-shadow: 2px 2px 4px #000000;
	font-family: Cambria;
	font-size: 85px;
	color: #fff;
}
</style>
</head>
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
	<div class="container register-form">
		<div class="row">
			<h1 class="text-center heading">ContactUs</h1>
				<%if (message!= null){%>
			<h2 class="text-center text-success fs-5 mt-2"><%=message%></h2>	
				<%}%>
		</div>
		<div class="form">
			<div class="note">
				<p>Please Fill Your Details For Contact.</p>
			</div>

			<form method="post" action="/Blood_Donation_System/ContactUs"
				class="needs-validation" novalidate>
				<div class="form-content">
					<div class="row ">
						<div class="col-md-6">

							<div class="form-group">
								<input type="text" class="form-control" id="username"
									name="username" placeholder="Enter your name "
									required="required" />
								<div class="invalid-feedback">Please Enter Your Name</div>
							</div>

							<div class="form-group mt-2">
								<input type="text" class="form-control" id="userphone"
									name="userphone" placeholder="Enter your phone number "
									required="required" />
								<div class="invalid-feedback">Please Enter Your Phone
									Number</div>
							</div>

						</div>

						<div class="col-md-6">

							<div class="form-group">
								<input type="text" class="form-control" id="useremail"
									name="useremail" placeholder="Enter your email "
									required="required" />
								<div class="invalid-feedback">Please Enter Your Email</div>
							</div>

							<div class="form-group mt-2">
								<input type="text" class="form-control" id="userquestion"
									name="userquestion" placeholder="Enter your query "
									required="required" />
								<div class="invalid-feedback">Please Enter Your Question</div>
							</div>

						</div>

						<button type="submit" class="btnSubmit fs-5 mt-2">Submit</button>
					</div>
			</form>
		</div>
	</div>

	<!-- footer -->
	<div class="container-fluid p-2">
		<%@include file="/commonfile/commonfooter.html"%>
	</div>

	<%@include file="/commonfile/scriptfiles.html"%>
</body>
</html>