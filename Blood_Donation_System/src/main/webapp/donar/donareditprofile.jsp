<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,blood_donation_system.dbtask.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DonarEditProfile | Blood Donation System</title>
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
	String donarname = (String)session.getAttribute("donarname");
	
	if (donarname == null) {
		request.setAttribute("message", "Please Login In ");

		RequestDispatcher rd = request.getRequestDispatcher("/jsp/login.jsp");// relative path

		rd.forward(request, response);
	} else {

		String strsql = "select * from donar where name=?";
		ResultSet rs = DonarTask.getDonarDetails(strsql, donarname);
	%>
	<%@include file="/donar/donar_header.jsp"%>
	
	<%
	String message = (String)request.getAttribute("message");
	%>
	<%if (message!= null){%>
		<h2 class="text-center text-success fs-5 mt-2"><%=message%></h2>	
	<%}%>
	
	<%
	if (rs.next())
	{
		/* String donarNo = rs.getString("donar_id"); */
		String donarPassword = rs.getString("donar_pass");
		String donarName = rs.getString("name");
		String donarPhone = rs.getString("phone");
		String donarEmail = rs.getString("email");
		String donarCity = rs.getString("city");
		String donarGender = rs.getString("gender");
		String donarAge = String.valueOf(rs.getInt("age"));
		String donarBloodGroup = rs.getString("blood_group");
	%>

	<div class="container register-form">
		<div class="row">
			<h1 class="text-center heading">Edit Profile</h1>
		</div>
		<div class="form">
			<div class="note">
				<p>Please Fill Your Details For Edit Profile .</p>
			</div>

			<form method="post" action="/Blood_Donation_System/DonarEditProfile"
				class="needs-validation" novalidate>
				<div class="form-content">
					<div class="row">
						
						<div class="col-md-6">
							<div class="form-group">
							<label for="username" class="text-dark fs-5">Enter Your Name</label>
								<input type="text" class="form-control" id="username"
									name="username" placeholder="Enter your name " value="<%=donarName %>" required="required" />
								<div class="invalid-feedback">Please Enter Your Name</div>
							</div>
							<div class="form-group mt-1">
							<label for="userphone" class="text-dark fs-5">Enter Your Phone Number </label>
								<input type="text" class="form-control" id="userphone"
									name="userphone" placeholder="Enter your phone number" value="<%=donarPhone %>"
									required="required" />
								<div class="invalid-feedback">Please Enter Your Phone
									Number</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
							<label for="useremail" class="text-dark fs-5">Enter Your Email</label>
								<input type="text" class="form-control" id="useremail"
									name="useremail" placeholder="Enter your email " value="<%=donarEmail %>" required="required" />
								<div class="invalid-feedback">Please Enter Your Email</div>
							</div>
							<div class="form-group mt-1">
							<label for="userage" class="text-dark fs-5">Enter Your Age</label>
								<input type="text" class="form-control" id="userage"
									name="userage" placeholder="Enter your age " value="<%=donarAge %>" required="required" />
								<div class="invalid-feedback">Please Enter Your Age</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group mt-1">
							<label for="gender" class="text-dark fs-5">Enter Your Gender</label>
								<input type="text" class="form-control" id="gender"
									name="gender" placeholder="gender"  value="<%=donarGender %>" required="required" />
								<div class="invalid-feedback">Please Enter Your Gender</div>
							</div>
							<div class="form-group mt-1">
							<label for="userpassword" class="text-dark fs-5">Enter Your Password</label>
								<input type="text" class="form-control" id="userpassword"
									name="userpassword" placeholder="Enter your password" value="<%=donarPassword %>"
									required="required" />
								<div class="invalid-feedback">Please Enter Your Password</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group mt-1">
							<label for="usercity" class="text-dark fs-5">Enter Your City</label>
								<input type="text" class="form-control" id="usercity"
									name="usercity" placeholder="Enter your city" value="<%=donarCity %>" required="required" />
								<div class="invalid-feedback">Please Enter Your City</div>
							</div>
							<div class="form-group mt-1">
							<label for="userblooddetail" class="text-dark fs-5">Enter Your Blood Group</label>
								<input type="text" class="form-control" id="usercity"
									name="userblooddetail" placeholder="Blood Group" value="<%=donarBloodGroup %>" required="required" />
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