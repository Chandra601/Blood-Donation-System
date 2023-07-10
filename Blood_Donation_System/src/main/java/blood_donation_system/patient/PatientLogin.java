package blood_donation_system.patient;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import blood_donation_system.dbtask.DbConnection;

/**
 * Servlet implementation class PatientLogin
 */
@WebServlet("/PatientLogin")
public class PatientLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String patientName = request.getParameter("patientname");
		String patientPassword = request.getParameter("patientPassword");

		con = DbConnection.openConnection();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String strsql = "select * from patient where name=? and patient_pass=?";
	
		
		try {
			
		ps = con.prepareStatement(strsql);
		ps.setString(1, patientName);
		ps.setString(2, patientPassword);
		
		rs = ps.executeQuery(); // it will execute the query
		
		if(rs.next())
		{
			HttpSession hs = request.getSession();
			
			hs.setAttribute("patientName", patientName);
			
			response.sendRedirect("/Blood_Donation_System/patient/patient_home.jsp");
		}
		
		else
		{
		request.setAttribute("message", "Please Check Your Patient Name And Password");
			
		RequestDispatcher rd = request.getRequestDispatcher("/patient/patient_login.jsp");//relative path
			
		rd.forward(request, response);
		} 
		} // try close
		catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
	}

}
