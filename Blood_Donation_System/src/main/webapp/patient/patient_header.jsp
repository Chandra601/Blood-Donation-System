<style type="text/css">
.navbar-brand {
	color: white;
	font-size: 20px;
}

.nav-item {
	color: white !important;
	font-size: 20px;
	font-family: Cambria;
	border-right: 3px solid white;
	margin: 0 20px;
}

.nav-link{
color: white !important;
}

li:last-child {
	border-right: none;
}

.nav-link:hover {
	text-decoration: underline;
	text-decoration-color: #080808 !important;
}

</style>
	<nav class="navbar navbar-expand-lg" style="background-color:  #e60000">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"><img alt="" src="/Blood_Donation_System/images/patientlogo.jpg" style="width:100px; height: 40%;"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 nav-item-list">
					<li class="nav-item"><a class="nav-link" href="/Blood_Donation_System/patient/patient_home.jsp"><i class="fas fa-angle-double-down"></i> Patient Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/Blood_Donation_System/patient/patient_editprofile.jsp"><i class="fas fa-redo"></i> Profile Edit</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/Blood_Donation_System/patient/patient_request.jsp">Make Blood Request</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/Blood_Donation_System/patient/patient_feedback.jsp">FeedBack</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/Blood_Donation_System/PatientLogout"><i class="text-danger fa-sharp fa-solid fa-right-from-bracket"></i> Logout</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>