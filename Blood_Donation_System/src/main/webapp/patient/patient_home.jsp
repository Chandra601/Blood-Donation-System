<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,blood_donation_system.dbtask.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Home | Blood Donation System</title>
<%@include file="/commonfile/headerfiles.html"%>
<style type="text/css">
.heading {
	margin: 5px auto;
	text-shadow: 2px 2px 4px #000000;
	font-family: Cambria;
	font-size: 35px;
	color: #fff;
}
</style>
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
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

	<div class="container-fluid">
		<h5 class="text-center text-dark heading"><%=patientName%> Welcome To Your Home DashBoard</h5>
	</div>

	<div class="container ">
		<img src="/Blood_Donation_System/images/doctorpatient.jpg"
			class="d-block w-100" alt="doctorimage" height="500px">
	</div>
	
	<!-- table donar details  -->
	<div class="container">
	<table class="table table-success">
		<thead>
			<tr>
			<th scope="col">Patient Id</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Age</th>
				<th scope="col">Gender</th>
				<th scope="col">Blood Group</th>
				<th scope="col">Phone no</th>
				<th scope="col">City</th>
			</tr>
		</thead>
		<tbody>
			<%
			if (rs.next()) {
			%>

			<tr class="table-info">
				<td><%=rs.getString("patient_id")%></td>
				<td><%=patientName%></td>
				<td><%=rs.getString("email")%></td>
				<td><%=rs.getInt("age")%></td>
				<td><%=rs.getString("gender")%></td>
				<td><%=rs.getString("blood_group")%></td>
				<td><%=rs.getString("phone")%></td>
				<td><%=rs.getString("city")%></td>
			</tr>

			<%
			}
			%>
		</tbody>
	</table>
	</div>

	<div class="container-fluid p-2">
		<%@include file="/commonfile/commonfooter.html"%>
	</div>
	
	<%
	}
	%>

	<%@include file="/commonfile/scriptfiles.html"%>
</body>
</html>