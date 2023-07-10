<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,blood_donation_system.dbtask.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PatientEditProfile | Blood Donation System</title>
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
	background: #0062cc;
	color: #fff;
	height: 50px;
	margin: 4px auto;
}

p {
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
	String patientName = (String)session.getAttribute("patientName");
	
	if (patientName == null) {
		request.setAttribute("message", "Please Login In ");

		RequestDispatcher rd = request.getRequestDispatcher("/patient/patient_login.jsp");// relative path

		rd.forward(request, response);
	} else {

		String strsql = "select * from patient where name=?";
		ResultSet rs = PatientTask.getPatientDetails(strsql, patientName);
	%>
	<%@include file="/patient/patient_header.jsp"%>
	
	<%
	String message = (String)request.getAttribute("message");
	%>
	<%if (message!= null){%>
		<h2 class="text-center text-success fs-5 mt-2"><%=message%></h2>	
	<%}%>
	
	<%
	if (rs.next())
	{
		/* String patientId = rs.getString("patient_id");  */
		String patientPassword = rs.getString("patient_pass");
		String name = rs.getString("name");
		String phone = rs.getString("phone");
		String email = rs.getString("email");
		String city = rs.getString("city");
		String gender = rs.getString("gender");
		String age = String.valueOf(rs.getInt("age"));
		String bloodgroup = rs.getString("blood_group");
	%>

	<div class="container register-form">
		<div class="row">
			<h1 class="text-center heading">Patient Edit Profile</h1>
		</div>
		<div class="form">
			<div class="note">
				<p>Please Fill Your Details For Edit Profile .</p>
			</div>

			<form method="post" action="/Blood_Donation_System/PatientEditProfile"
				class="needs-validation" novalidate>
				<div class="form-content">
					<div class="row">
						
						<div class="col-md-6">
							<div class="form-group">
							<label for="username" class="text-dark fs-5">Enter Your Name</label>
								<input type="text" class="form-control" id="patientname"
									name="patientname" placeholder="Enter your name " value="<%=patientName %>" required="required" />
								<div class="invalid-feedback">Please Enter Your Name</div>
							</div>
							<div class="form-group mt-1">
							<label for="userphone" class="text-dark fs-5">Enter Your Phone Number </label>
								<input type="text" class="form-control" id="userphone"
									name="userphone" placeholder="Enter your phone number" value="<%=phone %>"
									required="required" />
								<div class="invalid-feedback">Please Enter Your Phone
									Number</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
							<label for="useremail" class="text-dark fs-5">Enter Your Email</label>
								<input type="text" class="form-control" id="useremail"
									name="useremail" placeholder="Enter your email " value="<%=email %>" required="required" />
								<div class="invalid-feedback">Please Enter Your Email</div>
							</div>
							<div class="form-group mt-1">
							<label for="userage" class="text-dark fs-5">Enter Your Age</label>
								<input type="text" class="form-control" id="userage"
									name="userage" placeholder="Enter your age " value="<%=age %>" required="required" />
								<div class="invalid-feedback">Please Enter Your Age</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group mt-1">
							<label for="gender" class="text-dark fs-5">Enter Your Gender</label>
								<input type="text" class="form-control" id="gender"
									name="gender" placeholder="gender"  value="<%=gender %>" required="required" />
								<div class="invalid-feedback">Please Enter Your Gender</div>
							</div>
							<div class="form-group mt-1">
							<label for="userpassword" class="text-dark fs-5">Enter Your Password</label>
								<input type="text" class="form-control" id="patientpassword"
									name="patientpassword" placeholder="Enter your password" value="<%=patientPassword %>"
									required="required" />
								<div class="invalid-feedback">Please Enter Your Password</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group mt-1">
							<label for="usercity" class="text-dark fs-5">Enter Your City</label>
								<input type="text" class="form-control" id="usercity"
									name="usercity" placeholder="Enter your city" value="<%=city %>" required="required" />
								<div class="invalid-feedback">Please Enter Your City</div>
							</div>
							<div class="form-group mt-1">
							<label for="userblooddetail" class="text-dark fs-5">Enter Your Blood Group</label>
								<input type="text" class="form-control" id="usercity"
									name="userblooddetail" placeholder="Blood Group" value="<%=bloodgroup %>" required="required" />
								<div class="invalid-feedback">Please Enter Your City</div>
							</div>
						</div>
						
						<button type="submit" class="btnSubmit fs-6 mt-2 bg-danger">Submit</button>
					</div>
			</form>
		</div>
	</div>

<%
}
%>
	<!-- footer -->
	<div class="container-fluid p-2">
		<%@include file="/commonfile/commonfooter.html"%>
	</div>
	<%
}
%>

	<%@include file="/commonfile/scriptfiles.html"%>
</body>
</html>