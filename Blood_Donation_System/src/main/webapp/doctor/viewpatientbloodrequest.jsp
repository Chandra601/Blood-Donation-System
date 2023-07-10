<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,blood_donation_system.dbtask.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Patient BloodRequestList | Blood Donation System </title>
<%@include file="/commonfile/headerfiles.html"%>
<style type="text/css">
.heading {
	margin: 5px auto;
	text-shadow: 2px 2px 4px #000000;
	font-family: Cambria;
	font-size: 85px;
	color: #fff;
}
table {
  border-collapse: separate;
  border-spacing: 0;
  min-width: 350px;
}
table tr th,
table tr td {
  border-right: 1px solid #bbb;
  border-bottom: 1px solid #bbb;
  padding: 5px;
}
table tr th:first-child,
table tr td:first-child {
  border-left: 1px solid #bbb;
}
table tr th {
  background: #eee;
  border-top: 1px solid #bbb;
  text-align: left;
}

/* top-left border-radius */
table tr:first-child th:first-child {
  border-top-left-radius: 6px;
}

/* top-right border-radius */
table tr:first-child th:last-child {
  border-top-right-radius: 6px;
}

/* bottom-left border-radius */
table tr:last-child td:first-child {
  border-bottom-left-radius: 6px;
}

/* bottom-right border-radius */
table tr:last-child td:last-child {
  border-bottom-right-radius: 6px;
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
	String doctname = (String)session.getAttribute("doctname");
	
	if (doctname == null) {
		request.setAttribute("message", "Please Check Name And Password");

		RequestDispatcher rd = request.getRequestDispatcher("/doctor/doctorlogin.jsp");// relative path

		rd.forward(request, response);
	} else {

		String strsql = "select * from patient_requestblood";
		ResultSet rs = DoctorTask.viewPatientBloodRequestList(strsql);
	%>
<%@include file="/doctor/doctorheader.jsp"%>

	<div class="container-fluid">
		<h1 class="text-center text-success heading">All Patient Blood Request List</h1>
	</div>
	<div class="container">
	<table class="table table-primary table-striped-columns">
		<thead>
			<tr>
			<th scope="col">S No</th>
				<th scope="col">Name</th>
				<th scope="col">Phone</th>
				<th scope="col">Reason</th>
				<th scope="col">Age</th>
				<th scope="col">Blood Unit Request</th>
				<th scope="col">Blood Group</th>
			</tr>
		</thead>
		<tbody>
			<%
			while (rs.next()) {
			%>

			<tr class="table-dark">
				<td><%=rs.getString("sno")%></td>
				<td><%=rs.getString("patient_name")%></td>
				<td><%=rs.getString("patient_phone")%></td>
				<td><%=rs.getString("patient_reason")%></td>
				<td><%=rs.getString("patient_age")%></td>
			    <td><%=rs.getString("patient_unitblood")%></td>
			    <td><%=rs.getString("patient_blooddetails")%></td>
			</tr>

			<%
			}
			%>
		</tbody>
	</table>
	</div>
	<%
	}
	%>

	<div class="container p-2">
	<div class="row row-cols-1 row-cols-md-3 g-4">
  <div class="col">
    <div class="card">
      <img src="/Blood_Donation_System/images/doctor1.jpg" class="card-img-top" alt="feedbackimg">
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="/Blood_Donation_System/images/doctor2.jpg" class="card-img-top" alt="feedbackimg">
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="/Blood_Donation_System/images/doctor3.jpg" class="card-img-top" alt="feedbackimg">
    </div>
  </div>
</div>
	</div>



	<!-- footer -->
	<div class="container-fluid p-2">
		<%@include file="/commonfile/commonfooter.html"%>
	</div>

	<%@include file="/commonfile/scriptfiles.html"%>
</body>
</html>