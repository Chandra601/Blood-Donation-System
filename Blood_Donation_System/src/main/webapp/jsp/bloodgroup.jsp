<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MoreInformation | Blood Donation System</title>
<%@include file="/commonfile/headerfiles.html"%>
<style type="text/css">
.note {
	text-align: center;
	height: auto;
	background: -webkit-linear-gradient(left, #0072ff, #8811c5);
	color: #fff;
	font-weight: bold;

}
.special-heading
{
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
</style>
</head>
<body>
	<%@include file="/commonfile/commonheader.html"%>
	
	<div class="container mt-3 p-2" style="background: -webkit-linear-gradient(left, #0072ff, #8811c5);">
	<img src="/Blood_Donation_System/images/bloodcenter.jpg" class="img-fluid " alt="Blood Center">
	</div>
	<div class="container p-2 mb-2 mt-3" style="background: -webkit-linear-gradient(left, #0072ff, #8811c5); ">
		<div class="accordion special-heading" id="accordionExample">

			<div class="accordion-item">
				<h2 class="accordion-header" id="headingOne">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapseOne"
						aria-expanded="false" aria-controls="collapseOne">What
						are the Components of Blood?</button>
				</h2>
				<div id="collapseOne" class="accordion-collapse collapse"
					aria-labelledby="headingOne" data-bs-parent="#accordionExample">
					<div class="accordion-body">
						<p>red blood cells that deliver oxygen white blood cells that
							fight infections platelets that help blood clot plasma, the
							liquid part of blood.</p>
					</div>
				</div>
			</div>

			<div class="accordion-item">
				<h2 class="accordion-header" id="headingTwo">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapseTwo"
						aria-expanded="false" aria-controls="collapseTwo">What
						are the Blood Types?</button>
				</h2>
				<div id="collapseTwo" class="accordion-collapse collapse"
					aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
					<div class="accordion-body">
						<p>Categorizing blood according to type helps prevent
							reactions when someone gets a blood transfusion. The two main
							blood groups are ABO and Rh</p>
					</div>
				</div>
			</div>


			<div class="accordion-item">
				<h2 class="accordion-header" id="headingThree">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapseThree"
						aria-expanded="false" aria-controls="collapseThree">Do
						you know O negative?</button>
				</h2>
				<div id="collapseThree" class="accordion-collapse collapse"
					aria-labelledby="headingThree" data-bs-parent="#accordionExample">
					<div class="accordion-body">
						<p>This blood type doesn't have A or B markers, and it doesn't
							have Rh factor</p>
					</div>
				</div>
			</div>

			<div class="accordion-item">
				<h2 class="accordion-header" id="headingFour">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapseFour"
						aria-expanded="false" aria-controls="collapseFour">Do you
						know O positive?</button>
				</h2>
				<div id="collapseFour" class="accordion-collapse collapse"
					aria-labelledby="headingFour" data-bs-parent="#accordionExample">
					<div class="accordion-body">
						<p>This blood type doesn't have A or B markers, but it does
							have Rh factor. O positive blood is one of the two most common
							blood types (the other being A positive).</p>
					</div>
				</div>
			</div>

			<div class="accordion-item">
				<h2 class="accordion-header" id="headingFive">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapseFive"
						aria-expanded="false" aria-controls="collapseFive">Do you
						know A negative?</button>
				</h2>
				<div id="collapseFive" class="accordion-collapse collapse"
					aria-labelledby="headingFive" data-bs-parent="#accordionExample">
					<div class="accordion-body">
						<p>This blood type has A marker only.</p>
					</div>
				</div>
			</div>

			<div class="accordion-item">
				<h2 class="accordion-header" id="headingSix">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapseSix"
						aria-expanded="false" aria-controls="collapseSix">Do you
						know A positive?</button>
				</h2>
				<div id="collapseSix" class="accordion-collapse collapse"
					aria-labelledby="headingSix" data-bs-parent="#accordionExample">
					<div class="accordion-body">
						<p>This blood type has A marker and Rh factor, but not B
							marker. Along with O positive, it's one of the two most common
							blood types.</p>
					</div>
				</div>
			</div>

			<div class="accordion-item">
				<h2 class="accordion-header" id="headingSeven">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapseSeven"
						aria-expanded="false" aria-controls="collapseSeven">Do
						you know B negative?</button>
				</h2>
				<div id="collapseSeven" class="accordion-collapse collapse"
					aria-labelledby="headingSeven" data-bs-parent="#accordionExample">
					<div class="accordion-body">
						<p>This blood type has B marker only</p>
					</div>
				</div>
			</div>

			<div class="accordion-item">
				<h2 class="accordion-header" id="headingEight">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapseEight"
						aria-expanded="false" aria-controls="collapseEight">Do
						you know B positive?</button>
				</h2>
				<div id="collapseEight" class="accordion-collapse collapse"
					aria-labelledby="headingEight" data-bs-parent="#accordionExample">
					<div class="accordion-body">
						<p>This blood type has B marker and Rh factor, but not A
							marker.</p>
					</div>
				</div>
			</div>

			<div class="accordion-item">
				<h2 class="accordion-header" id="headingNine">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapseNine"
						aria-expanded="false" aria-controls="collapseNine">Do you
						know AB negative?</button>
				</h2>
				<div id="collapseNine" class="accordion-collapse collapse"
					aria-labelledby="headingNine" data-bs-parent="#accordionExample">
					<div class="accordion-body">
						<p>This blood type has A and B markers, but not Rh factor.</p>
					</div>
				</div>
			</div>


			<div class="accordion-item">
				<h2 class="accordion-header" id="headingTen">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapseTen"
						aria-expanded="false" aria-controls="collapseTen">Do you
						know AB positive?</button>
				</h2>
				<div id="collapseTen" class="accordion-collapse collapse"
					aria-labelledby="headingTen" data-bs-parent="#accordionExample">
					<div class="accordion-body">
						<p>This blood type has all three types of markers A, B, and
							Rh factor.</p>
					</div>
				</div>
			</div>


		</div>
	</div>
	
	<!-- second more details  -->
	<div class="container note mt-2 p-3">
		<h2 class="text-center text-white text-capitalize" style="font-size: 32px; font-family: Bookman Old Style">You can donate blood using
			three ways</h2>

		<!-- row start -->
		<div class="row">

			<div class="col-3 offset-md-1">
				<button onclick="showDiv('divPlasma')"
					style="border:none;border-radius: 10px; width: 150px; height: 50px; background-color: #FD7014; color: white; font-size: 18px; font-family: Bookman Old Style">Plasma</button>
				<div id="divPlasma" style="display: none;font-size: 18px; font-family: Bookman Old Style">
					<h2>What is it?</h2>
					<p>The straw-colored liquid in which red blood cells, white
						blood cells, and platelets float in.Contains special nutrients
						which can be used to create 18 different type of medical products
						to treat many different medical conditions.</p>
					<h2>Who can donate?</h2>
					<p>You need to be 18-70 (men) or 20-70 (women) years old, weigh
						50kg or more and must have given successful whole blood donation
						in last two years.</p>
					<button onclick="hideDiv('divPlasma')"
						style="border:none; border-radius: 5px; width: 90px; height: 45px">Hide</button>
				</div>
			</div>

			<div class="col-3 offset-md-1">
				<button onclick="showDiv('divWhole')"
					style="border:none; border-radius: 10px; width: 150px; height: 50px; background-color: #FD7014; color: white; font-size: 18px; font-family: Bookman Old Style">Whole
					Blood</button>
				<div id="divWhole" style="display: none;font-size: 18px; font-family: Bookman Old Style">
					<h2>What is it?</h2>
					<p>Blood Collected straight from the donor after its donation
						usually separated into red blood cells, platelets, and plasma.</p>
					<h2>Who can donate?</h2>
					<p>You need to be 18-65 years old, weigh 45kg or more and be
						fit and healthy.</p>
					<button onclick="hideDiv('divWhole')"
						style="border:none; border-radius: 5px; width: 90px; height: 45px">Hide</button>
				</div>
			</div>

			<div class="col-3 offset-md-1">
				<button onclick="showDiv('divPlatelet')"
					style="border:none; border-radius: 10px; width: 150px; height: 50px; background-color: #FD7014; color: white; font-size: 18px; font-family: Bookman Old Style">Platelet</button>
				<div id="divPlatelet" style="display: none;font-size: 18px; font-family: Bookman Old Style">
					<h2>What is it?</h2>
					<p>The tiny 'plates' in blood that wedge together to help to
						clot and reduce bleeding. Always in high demand, Vital for people
						with low platelet count, like malaria and cancer patients.</p>
					<h2>Who can donate?</h2>
					<p>You need to be 18-70 years old (men), weigh 50kg or more and
						have given a successful plasma donation in the past 12 months.</p>
					<button onclick="hideDiv('divPlatelet')"
						style="border:none; border-radius: 5px; width: 90px; height: 45px">Hide</button>
				</div>
			</div>

		</div>
		<!-- row end  -->
	</div>
	
	<!-- footer  -->
	<div class="container-fluid p-2">
		<%@include file="/commonfile/commonfooter.html"%>
	</div>

	<%@include file="/commonfile/scriptfiles.html"%>
</body>
</html>