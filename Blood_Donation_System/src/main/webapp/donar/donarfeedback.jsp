<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DonarFeedBack | Blood Donation System</title>
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
	background: -webkit-linear-gradient(right, #0012df, #4551c5);
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
	width: 46%;
	cursor: pointer;
	background: #0062cc;
	color: #fff;
	margin: 12px auto;
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
	String message = (String)request.getAttribute("message");
	%>
	<%@include file="/donar/donar_header.jsp"%>

	<div class="container register-form">
		<div class="row">
			<h1 class="text-center heading">FeedBack</h1>
				<%if (message!= null){%>
				<h2 class="text-center text-success fs-3 mt-2"><%=message%></h2>	
				<%}%>
		</div>
		<div class="form">
			<div class="note">
				<p>Please Fill Your Details For FeedBack</p>
			</div>

			<form method="post" action="/Blood_Donation_System/DonarFeedBack"
				class="needs-validation" novalidate>
				<div class="form-content">
					<div class="row">
						<div class="col-md-6">

							<div class="form-group">
							<label for="username" class="text-dark fs-5">Enter Your Name</label>
								<input type="text" class="form-control" id="username"
									name="username" placeholder="Enter Your Name *"
									required="required" />
								<div class="invalid-feedback">Please Enter Your Name</div>
							</div>

							<div class="form-group mt-2">
							<label for="userdate" class="text-dark fs-5">Enter Your Date</label>
								<input type="date" class="form-control" id="userdate"
									name="userdate" placeholder="Enter Your Date "
									required="required" />
								<div class="invalid-feedback">Please Enter Your Date</div>
							</div>

						</div>

						<div class="col-md-6">

							<div class="form-group">
							<label for="useremail" class="text-dark fs-5">Enter Your Email</label>
								<input type="text" class="form-control" id="useremail"
									name="useremail" placeholder="Enter Your Email *"
									required="required" />
								<div class="invalid-feedback">Please Enter Your Email</div>
							</div>

							<div class="form-group mt-2">
							<label for="userfeedback" class="text-dark fs-5">Enter Your FeedBack</label>
								<input type="text" class="form-control" id="userfeedback"
									name="userfeedback" placeholder="Enter Your FeedBack *"
									required="required" />
								<div class="invalid-feedback">Please Enter Your FeedBack</div>
							</div>

						</div>
						
						<div class="col-md-6 mt-2">
							<div class="form-group">
							<label for="usercity" class="text-dark fs-5">Enter Your Rating</label>
								<select class="form-control" class="form-select" name="userRating"
									required aria-label="select example">
									<option>Select Rating</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
								<div class="invalid-feedback">Please Select the Rating</div>
							</div>
						</div>

						<button type="submit" class="btnSubmit mt-2 bg-danger">Submit</button>
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