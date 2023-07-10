package blood_donation_system.patient;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blood_donation_system.dbtask.DbConnection;

/**
 * Servlet implementation class PatientRequestBlood
 */
@WebServlet("/PatientRequestBlood")
public class PatientRequestBlood extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String patient_name = request.getParameter("patient_name");
		String patient_phone = request.getParameter("patient_phone");
		String patient_reason = request.getParameter("patient_reason");
		String patient_age = request.getParameter("patient_age");
		String patient_unitblood = request.getParameter("patient_unitblood");
		String patient_blooddetail = request.getParameter("patient_blooddetail");
		
		con = DbConnection.openConnection(); 
		
		PreparedStatement ps = null;
		
		try {
			
			String insert_query = "insert into patient_requestblood(patient_name, patient_phone, patient_reason, patient_age, patient_unitblood,patient_blooddetails)values(?,?,?,?,?,?)";
			
			ps = con.prepareStatement(insert_query);
			
			ps.setString(1, patient_name);
			ps.setString(2, patient_phone);
			ps.setString(3,patient_reason);
			ps.setInt(4,Integer.parseInt(patient_age));
			ps.setInt(5, Integer.parseInt(patient_unitblood));
			ps.setString(6,patient_blooddetail);
			
			int status = ps.executeUpdate();
			
			if(status>0)
			{
				request.setAttribute("BloodMessage","Your Blood Request Submitted Successfully");
				RequestDispatcher rd = request.getRequestDispatcher("/patient/patient_request.jsp");
				rd.forward(request, response);
			}
			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		finally{
			try {
				if(ps!=null)
					ps.close();
			}
			catch(SQLException se)
			{
				se.printStackTrace();
			}
		}
	}

}
