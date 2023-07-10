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
 * Servlet implementation class DonarDonateBlood
 */
@WebServlet("/DonarDonateBlood")
public class DonarDonateBlood extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Connection con;
    
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String donarname = request.getParameter("donarname");
		String donarphone = request.getParameter("donarphone");
		String donardisease = request.getParameter("donardisease");
		String donarage = request.getParameter("donarage");
		String donarunitblood = request.getParameter("donarunitblood");
		String donarblooddetail = request.getParameter("donarblooddetail");
		
		con = DbConnection.openConnection(); 
		
		PreparedStatement ps = null;
		
		try {
			
			String insert_query = "insert into donar_donateblood(donar_name, donar_phone, donar_disease, donar_age, donar_unitblood,donar_blooddetails)values(?,?,?,?,?,?)";
			
			ps = con.prepareStatement(insert_query);
			
			ps.setString(1, donarname);
			ps.setString(2, donarphone);
			ps.setString(3,donardisease);
			ps.setInt(4,Integer.parseInt(donarage));
			ps.setInt(5, Integer.parseInt(donarunitblood));
			ps.setString(6,donarblooddetail);
			
			int status = ps.executeUpdate();
			
			if(status>0)
			{
				request.setAttribute("DonateBloodMessage","Your Donate Blood Details Submitted Successfully");
				RequestDispatcher rd = request.getRequestDispatcher("/donar/donar_donateblood.jsp");
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
