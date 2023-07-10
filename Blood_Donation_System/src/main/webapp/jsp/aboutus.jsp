<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us | Blood Donation System</title>
<%@include file="/commonfile/headerfiles.html"%>
<style>
body {
	background-color: #ad9dfb;
	font-size: 14px;
	color: #fff;
	font-size: 14px
}

.main-container {
	background-image: url("/Blood_Donation_System/images/banner.jpg");
	background-size: contain;
	border-radius: 10px;
	background-repeat: no-repeat;
}

.paragraph {
	font-size: 1.2rem;
	font-family: Cambria;
	color: black;
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
	<%@include file="/commonfile/commonheader.html"%>
	<div class="container">
		<div class="row">
			<h1 class="text-center heading">AboutUs</h1>
		</div>
		<div class="row">
			<div class="col-12 col-md-6 main-container"></div>
			<div class="col-12 col-md-6">
				<p class="paragraph">Blood is the fluid that circulates
					throughout our body conducting various functions. There are times
					when a person loses excessive blood and needs blood from some
					external source. In such situations, the donation of blood plays an
					important role. It is the noblest cause you can do to help ailing
					people. Blood Donation is the process wherein blood is drawn from
					one person and transfused to another person. Blood banks usually
					engage in this collection process and procedures following it.
					World Blood Donor Day is celebrated on 14th June every year. The
					main reason to donate blood is to save a life so you must never
					think twice to donate blood. It is a sign of humanity. It does not
					see the caste, creed, and religion of the blood donor. Furthermore,
					the organs in our body conduct different functions and these organs
					need energy and oxygen to function properly. The oxygen and the
					energy are derived from the blood that circulates in our body. So
					when an organ fails to do a specific function then blood is
					required from an external source.</p>

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