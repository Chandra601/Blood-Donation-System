<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.sql.*,blood_donation_system.dbtask.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Home | Blood Donation System</title>
<%@include file="/commonfile/headerfiles.html"%>
<style type="text/css">
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
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
	%>
	<%@include file="/doctor/doctorheader.jsp"%>
	<%
	String doctname = (String) session.getAttribute("doctname");

	if (doctname == null) {
		request.setAttribute("message", "Please Check Name And Password");

		RequestDispatcher rd = request.getRequestDispatcher("/doctor/doctorlogin.jsp");// relative path

		rd.forward(request, response);
	} else {

		String strsql = "select count(*) from donar";
		ResultSet rs = DoctorTask.donarCount(strsql);
		rs.next();

		String patientCount = "select count(*) from patient";
		ResultSet pc = DoctorTask.patientCount(patientCount);
		pc.next();

		/* apositiveblood start */
		String apositiveblood = "select sum(donar_unitblood) from donar_donateblood where donar_blooddetails ='A+'";
		ResultSet apb = DoctorTask.apositiveblood(apositiveblood);
		apb.next();

		/* anegativeblood start */
		String anegativeblood = "select sum(donar_unitblood) from donar_donateblood where donar_blooddetails ='A-'";
		ResultSet anb = DoctorTask.anegativeblood(anegativeblood);
		anb.next();

		/* bpositiveblood start */
		String bpositiveblood = "select sum(donar_unitblood) from donar_donateblood where donar_blooddetails ='B+'";
		ResultSet bpb = DoctorTask.bpositiveblood(bpositiveblood);
		bpb.next();

		/* anegativeblood start */
		String bnegativeblood = "select sum(donar_unitblood) from donar_donateblood where donar_blooddetails ='B-'";
		ResultSet bnb = DoctorTask.bnegativeblood(bnegativeblood);
		bnb.next();

		/* abpositiveblood start */
		String abpositiveblood = "select sum(donar_unitblood) from donar_donateblood where donar_blooddetails ='AB+'";
		ResultSet abpb = DoctorTask.abpositiveblood(abpositiveblood);
		abpb.next();

		/* abnegativeblood start */
		String abnegativeblood = "select sum(donar_unitblood) from donar_donateblood where donar_blooddetails ='AB-'";
		ResultSet abnb = DoctorTask.abnegativeblood(abnegativeblood);
		abnb.next();

		/* opositiveblood start */
		String opositiveblood = "select sum(donar_unitblood) from donar_donateblood where donar_blooddetails ='O+'";
		ResultSet opb = DoctorTask.opositiveblood(opositiveblood);
		opb.next();

		/* apositiveblood start */
		String onegativeblood = "select sum(donar_unitblood) from donar_donateblood where donar_blooddetails ='O-'";
		ResultSet onb = DoctorTask.onegativeblood(onegativeblood);
		onb.next();
	%>

	<div class="container ">
		<img src="/Blood_Donation_System/images/doctor1.jpg"
			class="d-block w-100" alt="doctorimage" height="500px">
	</div>
	<!-- card start -->
	<div class="container">

		<div class="row">
			<div class="col-md-6 p-2">
				<p class="text-white lh-lg bg-success p-1 rounded">Blood is the
					fluid that circulates throughout our body conducting various
					functions. There are times when a person loses excessive blood and
					needs blood from some external source. In such situations, the
					donation of blood plays an important role. It is the noblest cause
					you can do to help ailing people. Blood Donation is the process
					wherein blood is drawn from one person and transfused to another
					person. Blood banks usually engage in this collection process and
					procedures following it. World Blood Donor Day is celebrated on
					14th June every year. The main reason to donate blood is to save a
					life so you must never think twice to donate blood. It is a sign of
					humanity. It does not see the caste, creed, and religion of the
					blood donor. Furthermore, the organs in our body conduct different
					functions and these organs need energy and oxygen to function
					properly. The oxygen and the energy are derived from the blood that
					circulates in our body. So when an organ fails to do a specific
					function then blood is required from an external source.</p>
			</div>
			<div class="col-md-3 p-2">
				<div class="card" style="width: 18rem;">
					<img src="/Blood_Donation_System/images/doctordonar.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">
							Donor Present
							<%=rs.getInt(1)%></h5>
						<p class="card-text">a person who gives blood, cells, tissue,
							or an organ for use in another person, such as in a blood
							transfusion or an organ transplant.</p>
						<a href="/Blood_Donation_System/doctor/viewdonar.jsp" class="btn btn-primary">Donar</a>
					</div>
				</div>
			</div>
			<div class="col-md-3 p-2">
				<div class="card" style="width: 18rem;">
					<img src="/Blood_Donation_System/images/labfirst.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">
							Patient Present
							<%=pc.getInt(1)%>
						</h5>
						<p class="card-text">a person who gives blood, cells, tissue,
							or an organ for use in another person, such as in a blood
							transfusion or an organ transplant.</p>
						<a href="/Blood_Donation_System/doctor/viewpatient.jsp" class="btn btn-primary">Patient</a>
					</div>
				</div>
			</div>
			<!-- col-md-end last -->
		</div>
	</div>
	<!-- card end -->
	<hr>
	<!-- card start -->
	<div class="container">
		<div class="row p-3">
			<div class="col-md-3">
				<div class="card" style="width: 18rem;">
					<img src="/Blood_Donation_System/images/blooddrop.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">
							A+ Blood Unit Present
							<%=apb.getInt(1)%>
						</h5>
						<p class="card-text">You can give blood to A+ and AB+.
						You can receive blood from A+, A-, O+ and O-.</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card" style="width: 18rem;">
					<img src="/Blood_Donation_System/images/blooddrop.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">
							A- Blood Unit Present
							<%=anb.getInt(1)%></h5>
						<p class="card-text">You can give blood to A-, A+, AB-  and AB+.
						You can receive blood from A- and O-.</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card" style="width: 18rem;">
					<img src="/Blood_Donation_System/images/blooddrop.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">
							B+ Blood Unit Present
							<%=bpb.getInt(1)%>
						</h5>
						<p class="card-text">You can give blood to B+ and AB+.
						You can receive blood from B+,B-,O+ and O-.</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card" style="width: 18rem;">
					<img src="/Blood_Donation_System/images/blooddrop.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">
							B- Blood Unit Present
							<%=bnb.getInt(1)%>
						</h5>
						<p class="card-text">You can give blood to B-, B+, AB-  and AB+.
						You can receive blood from B- and O-.</p>
					</div>
				</div>
			</div>
			<!-- col-md-end last -->
		</div>
	</div>
	<!-- card end -->
	<!-- card start -->
	<div class="container">
		<div class="row p-3">
			<div class="col-md-3">
				<div class="card" style="width: 18rem;">
					<img src="/Blood_Donation_System/images/blooddrop.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">
							AB+ Blood Unit Present
							<%=abpb.getInt(1)%></h5>
						<p class="card-text">People with AB+ can donate only to AB+ blood type.
						AB+ are universal red cell recipients because they can receive red cells from all types</p>

					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card" style="width: 18rem;">
					<img src="/Blood_Donation_System/images/blooddrop.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">
							AB- Blood Unit Present
							<%=abnb.getInt(1)%></h5>
						<p class="card-text">You can give blood to both AB- and AB+.
						Donars with AB+ and AB- blood are universal plasma donors. They can donate blood to all negative blood types.</p>

					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card" style="width: 18rem;">
					<img src="/Blood_Donation_System/images/blooddrop.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">
							O+ Blood Unit Present
							<%=opb.getInt(1)%>
						</h5>
				<p class="card-text">You can give blood to A+, B+, AB+  and O+.
						You can receive blood from O+ and O-.</p>

					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card" style="width: 18rem;">
					<img src="/Blood_Donation_System/images/blooddrop.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">
							O- Blood Unit Present
							<%=onb.getInt(1)%>
						</h5>
						<p class="card-text">Donors with type O- blood are universal red donors whose donations can be given to people of all blood types.
						People with O- blood can only receive red cell donations from O- donors.</p>

					</div>
				</div>
			</div>
			<!-- col-md-end last -->
		</div>
	</div>
	<!-- card end -->
	<hr>
	<%
	}
	%>
	<!-- footer -->
	<div class="container-fluid p-2">
		<%@include file="/commonfile/commonfooter.html"%>
	</div>

	<%@include file="/commonfile/scriptfiles.html"%>

</body>
</html>