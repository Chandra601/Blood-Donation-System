<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donar Donate Blood | Blood Donation System</title>
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
	border-radius: 0.5rem;
	width: 45%;
	cursor: pointer;
	color: #fff;
	height: 50px;
	margin: 4px auto;
}

p {
	font-size: 1.4rem;
	font-family: Cambria;
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
	String message = (String)request.getAttribute("DonateBloodMessage");
	%>
	<%@include file="/donar/donar_header.jsp"%>

	<div class="container register-form">
		<div class="row">
			<h1 class="text-center heading">Donor Donate Blood </h1>
			<%if (message!= null){%>
			<h2 class="text-center text-success fs-5 mt-2"><%=message%></h2>	
			<%}%>
		</div>
		<div class="form">
			<div class="note">
				<p>Please Fill Your Details For Blood Donate .</p>
			</div>

			<form method="post" action="/Blood_Donation_System/DonarDonateBlood"
				class="needs-validation" novalidate>
				<div class="form-content">
					<div class="row">
						
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control fs-5" id="donarname"
									name="donarname" placeholder="Enter Your Name " required="required" />
								<div class="invalid-feedback">Please Enter Your Name</div>
							</div>
							<div class="form-group mt-1">
								<input type="text" class="form-control fs-5" id="donarphone"
									name="donarphone" placeholder="Enter Your Phone"
									required="required" />
								<div class="invalid-feedback">Please Enter Your Phone
									Number</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control fs-5" id="donardisease"
									name="donardisease" placeholder="Enter Your Disease (If any) " required="required" />
								<div class="invalid-feedback">Please Enter Your Disease</div>
							</div>
							<div class="form-group mt-1">
								<input type="text" class="form-control fs-5" id="donarage"
									name="donarage" placeholder="Enter Your Age " required="required" />
								<div class="invalid-feedback">Please Enter Your Age</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group mt-1">
								<input type="text" class="form-control fs-5" id="donarunitblood"
									name="donarunitblood" placeholder="Enter Your Donate Blood Unit" required="required" />
								<div class="invalid-feedback">Enter Your Blood Unit</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group mt-1">
								 <select class="form-select fs-5" name="donarblooddetail" required
									aria-label="select example">
									<option value="">Select the Blood Group</option>
									<option value="A+">A+</option>
									<option value="A-">A-</option>
									<option value="B+">B+</option>
									<option value="B-">B-</option>
									<option value="AB+">AB+</option>
									<option value="AB-">AB-</option>
									<option value="O+">O+</option>
									<option value="O-">O-</option>
								</select>
								<div class="invalid-feedback">Please Select the Blood Group</div>
							</div>
						</div>
						
						<button type="submit" class="btnSubmit btn btn-danger fs-6">Submit</button>
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