<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,blood_donation_system.dbtask.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donor Home | Blood Donation System</title>
<%@include file="/commonfile/headerfiles.html"%>
<style type="text/css">
.heading {
	margin: 5px auto;
	text-shadow: 2px 2px 4px #000000;
	font-family: Cambria;
	font-size: 45px;
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
	
	<div class="jumbotron jumbotron-fluid">
  		<div class="container">
    		<h1 class="display-4 text-center"><%=donarname %> Welcome To Your Home Page</h1>
  		</div>
	</div>
	
	<!-- carousel start -->
	<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/Blood_Donation_System/images/doctordonar.jpg" alt="Los Angeles" width="100%" height="500">
    </div>
    <div class="carousel-item">
      <img src="/Blood_Donation_System/images/donar1(1).jpg" alt="Chicago" width="100%" height="500">
    </div>
    <div class="carousel-item">
      <img src="/Blood_Donation_System/images/donar1(2).jpg" alt="New York" width="100%" height="500">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
	<!-- end carousel -->
	
	<hr>
	<!-- table donar details  -->
	<div class="container fs-4">
	<table class="table table-dark rounded ">
		<thead>
			<tr>
			<th scope="col">DonorID</th>
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

			<tr class="table-warning">
				<td><%=rs.getString("donar_id")%></td>
				<td><%=donarname%></td>
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
	
	<hr>
	<!-- script file -->

	<div class="container-fluid p-2">
		<%@include file="/commonfile/commonfooter.html"%>
	</div>
	
	<%
	}
	%>
	 <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  	 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
 	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	<%@include file="/commonfile/scriptfiles.html"%>
</body>
</html>