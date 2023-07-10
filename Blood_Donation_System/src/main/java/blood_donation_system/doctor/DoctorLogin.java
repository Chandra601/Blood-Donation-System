package blood_donation_system.doctor;

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
 * Servlet implementation class DoctorLogin
 */
@WebServlet("/DoctorLogin")
public class DoctorLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String doctname = request.getParameter("doctname");
		String doctpassword = request.getParameter("doctpassword");

		con = DbConnection.openConnection();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String strsql = "select * from doctor where doctor_name=? and doctor_password=?";
	
		
		try {
			
		ps = con.prepareStatement(strsql);
		ps.setString(1, doctname);
		ps.setString(2, doctpassword);
		
		rs = ps.executeQuery(); // it will execute the query
		
		if(rs.next())
		{
			HttpSession hs = request.getSession();
			
			hs.setAttribute("doctname", doctname);
			
			response.sendRedirect("/Blood_Donation_System/doctor/doctor_home.jsp");
		}
		
		else
		{
		request.setAttribute("message", "Please Check Your Name And Password");
			
		RequestDispatcher rd = request.getRequestDispatcher("/doctor/doctorlogin.jsp");//relative path
			
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
