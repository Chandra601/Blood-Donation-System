<style type="text/css">


.navbar-brand {
	color: white;
	font-size: 20px;
}

a:hover {
	color: black !important;
	font-size: 22px;
}
.nav-item {
	/* color: white !important;
	font-size: 20px;
	font-family: Cambria; */
	border-right: 3px solid white;
	margin: 0 12px;
/* 	margin: 0 16px; */
}

.nav-link {
	color: white !important;
	/* It is used override the default attribute value */
	font-size: 20px;
	font-family: Bookman Old Style;
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
			<a class="navbar-brand" href="#"><img alt="" src="/Blood_Donation_System/images/blood1.jpg" style="width:auto; height: 40px;"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 nav-item-list">
					<li class="nav-item"><a class="nav-link" href="/Blood_Donation_System/doctor/doctor_home.jsp"><i class="fas fa-angle-double-down"></i> Doctor Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/Blood_Donation_System/doctor/viewpatient.jsp"><i class="fas fa-redo"></i> Patient</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/Blood_Donation_System/doctor/viewdonar.jsp"><i class="fas fa-redo"></i> Donor</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/Blood_Donation_System/doctor/viewcontactus.jsp"><i class="fas fa-headset"></i> ContactUs</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/Blood_Donation_System/doctor/viewfeedback.jsp"><i class="fa-sharp fa-solid fa-comments"></i> FeedBack</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/Blood_Donation_System/doctor/viewdonardonateblood.jsp"><i class="fa-solid fa-user"></i> Donate Blood</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/Blood_Donation_System/doctor/viewpatientbloodrequest.jsp"><i class="fa-solid fa-user"></i> Blood Request</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/Blood_Donation_System/DoctorLogout"><i class="fa-sharp fa-solid fa-right-from-bracket"></i> Logout</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>