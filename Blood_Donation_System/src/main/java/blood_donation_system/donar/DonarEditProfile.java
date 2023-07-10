package blood_donation_system.donar;

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
 * Servlet implementation class DonarEditProfile
 */
@WebServlet("/DonarEditProfile")
public class DonarEditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			
			String strupdate = "update donar set donar_pass=?, name=?, age=?, email=?, gender=?, phone=?, blood_group=?, city=?, date=?";
			
			ps = con.prepareStatement(strupdate);
			
			ps.setString(1, password);
			ps.setString(2,name);
			ps.setInt(3, Integer.parseInt(age));
			ps.setString(4,email);
			ps.setString(5,gender);
			ps.setString(6, phone);
			ps.setString(7, blood);
			ps.setString(8, city);
			ps.setDate(9, sd);
			
			int status = ps.executeUpdate();
			
			if(status>0)
			{
				request.setAttribute("message","Thank You Information Is Successfully Update");
				RequestDispatcher rd = request.getRequestDispatcher("/donar/donareditprofile.jsp");
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
