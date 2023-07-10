<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blood Donation System</title>
<%@include file="/commonfile/headerfiles.html"%>
<style type="text/css">
.mySlides {display:none;}
.w-100 {
	width: 100% !important;
	height: 80vh; /*1vh=1%  */
}

.note {
	text-align: center;
	height: auto;
	background: -webkit-linear-gradient(left, #0072ff, #8811c5);
	color: #fff;
	font-weight: bold;
}

.special-heading {
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
</style>
</head>
<body>
	<%@include file="/commonfile/commonheader.html"%>

	<!-- carousel slide start here -->
	<div class="container-fluid m-0">
		<div id="carouselExampleCaptions" class="carousel slide h-50"
			data-bs-ride="false">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>

			<div class="carousel-inner">

				<div class="carousel-item active">
					<img src="/Blood_Donation_System/images/doctor.jpg"
						class="d-block w-100 mySlides" alt="doctorimage" height="500px">
				</div>

				<div class="carousel-item">
					<img src="/Blood_Donation_System/images/doctor2.jpg"
						class="d-block w-100 mySlides" alt="doctorimage" height="500px">
				</div>

				<div class="carousel-item">
					<img src="/Blood_Donation_System/images/doctor3.jpg"
						class="d-block w-100 mySlides" alt="doctorimage" height="500px">
				</div>

			</div>

		</div>
	</div>

	<!-- carousel closed here -->

	<!-- events start here -->

	<!-- events closed here -->

	<hr>

	<!-- key feature  -->
	<div class="container p-3">
		<h2 class="text-center mt-5">Key Feature Of Our Blood Center</h2>
		<!-- first row -->
		<div class="row">
			<div class="col-md-8 p-5">
				<!-- second row start -->
				<div class="row">


					<div class="col-md-6 ">
						<div class="card-body">
							<p class="card-text text-success special-heading">Blood
								donation is a voluntary procedure that can help save lives.
								There are several types of blood donation. Each type helps meet
								different medical needs.</p>
						</div>
					</div>
					<div class="col-md-6 ">
						<div class="card-body">
							<p class="card-text text-primary special-heading">Whole blood
								donation is the most common type of blood donation. During this
								donation, you donate about a pint (about half a liter) of whole
								blood. The blood is then separated into its components are red
								cells, plasma and sometimes platelets.</p>
						</div>
					</div>
					<div class="col-md-6 mt-3 ">
						<div class="card-body">
							<p class="card-text text-primary special-heading">Platelet
								donation collects only platelets. Platelets are the cells that
								help stop bleeding by clumping and forming plugs in blood
								vessels. Donated platelets are commonly given to people with
								problems or cancer and people who will have organ transplants or
								major surgeries.</p>
						</div>
					</div>
					<div class="col-md-6 mt-3">
						<div class="card-body">
							<p class="card-text text-success special-heading">Double red
								cell donation allows you to donate a concentrated amount of red
								blood cells. Red blood cells deliver oxygen to your organs and
								tissues. Donated red blood cells are typically given to people
								with severe blood loss, such as after an injury or accident, and
								people with sickle cell anemia.</p>
						</div>
					</div>

				</div>
				<!-- end second row -->
			</div>
			<div class="col-md-4 p-5 rounded">
				<img class="shadow rounded"
					src="/Blood_Donation_System/images/blood1.jpg"
					style="width: 25rem;">
			</div>
		</div>
		<!-- end row1 -->
	</div>
	<!-- end key feature -->
	<hr>

	<div class="container shadow-lg rounded p-2">
		<div class="row">

			<div class="col-md-6">
				<p class="text-success special-heading fs-5 bg-info p-3">Blood is the fluid that circulates
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
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-6">
						<img class=" shadow rounded"
							src="/Blood_Donation_System/images/card3.jpg"
							style="width: 17rem;">
					</div>
					<div class="col-md-6">
						<img class="shadow rounded"
							src="/Blood_Donation_System/images/card2.jpg"
							style="width: 17rem;">
					</div>
					<div class="col-md-6 mt-3">
						<img class="shadow rounded"
							src="/Blood_Donation_System/images/card1.jpg"
							style="width: 17rem;">
					</div>
					<div class="col-md-6 mt-3">
						<img class="shadow rounded"
							src="/Blood_Donation_System/images/card4.jpg"
							style="width: 17rem;">
					</div>
				</div>
			</div>
		</div>
	</div>

	<hr>
	<!-- card start -->
	<div class="container">
	<div class="row p-3">
	<div class="col-md-3">
		<div class="card" style="width: 18rem;">
		  <img src="/Blood_Donation_System/images/card3.jpg" class="card-img-top" alt="...">
		  	<div class="card-body">
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-primary">Go somewhere</a>
  			</div>
		</div>
	</div>
	<div class="col-md-3">
		<div class="card" style="width: 18rem;">
		  <img src="/Blood_Donation_System/images/card2.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-primary">Go somewhere</a>
		  </div>
		</div>
	</div>
	<div class="col-md-3">
		<div class="card" style="width: 18rem;">
		<img src="/Blood_Donation_System/images/card1.jpg" class="card-img-top" alt="...">
	  		<div class="card-body">
		    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    	<a href="#" class="btn btn-primary">Go somewhere</a>
			</div>
		</div>
	</div>
	<div class="col-md-3">
		<div class="card" style="width: 18rem;">
		<img src="/Blood_Donation_System/images/card4.jpg" class="card-img-top" alt="...">
	  		<div class="card-body">
		    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    	<a href="#" class="btn btn-primary">Go somewhere</a>
			</div>
		</div>
	</div>
	<!-- col-md-end last -->
	</div>
	</div>
	<!-- card end -->
	<hr>
	<div class="container-fluid p-2">
		<%@include file="/commonfile/commonfooter.html"%>
	</div>

	<%@include file="/commonfile/scriptfiles.html"%>
</body>
</html>