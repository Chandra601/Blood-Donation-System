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
 * Servlet implementation class PatientRegistration
 */
@WebServlet("/PatientRegistration")
public class PatientRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("patientId");
		String password = request.getParameter("userpassword");
		String name = request.getParameter("username");
		String email = request.getParameter("useremail");
		String phone = request.getParameter("userphone");
		String age = request.getParameter("userage");
		String gender = request.getParameter("gender");
		String blood = request.getParameter("userblooddetail");
		String city = request.getParameter("usercity");
		
		java.util.Date d  = new java.util.Date();
		
		java.sql.Date sd = new java.sql.Date(d.getTime());
		
		con = DbConnection.openConnection(); 
		
		PreparedStatement ps = null;
		
		try {
			
			String insert_query = "insert into patient(patient_id, patient_pass, name, age, email, gender, phone, blood_group, city, date)values(?,?,?,?,?,?,?,?,?,?)";
			
			ps = con.prepareStatement(insert_query);
			
			ps.setString(1, id);
			ps.setString(2, password);
			ps.setString(3,name);
			ps.setInt(4, Integer.parseInt(age));
			ps.setString(5,email);
			ps.setString(6,gender);
			ps.setString(7, phone);
			ps.setString(8, blood);
			ps.setString(9, city);
			ps.setDate(10, sd);
			
			int status = ps.executeUpdate();
			
			if(status>0)
			{
				request.setAttribute("message","Registration Successfull Go To Login Profile");
				RequestDispatcher rd = request.getRequestDispatcher("/patient/patient_registration.jsp");
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
