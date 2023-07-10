package blood_donation_system.donar;

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
 * Servlet implementation class DonarLogin
 */
@WebServlet("/DonarLogin")
public class DonarLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;

    public DonarLogin() {
        super();
    }

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String donarname = request.getParameter("donarname");
		String donarpassword = request.getParameter("userpassword");

		con = DbConnection.openConnection();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String strsql = "select * from donar where donar_pass=? and name=?";
	
		
		try {
			
		ps = con.prepareStatement(strsql);
		ps.setString(1, donarpassword);
		ps.setString(2, donarname);
		
		rs = ps.executeQuery(); // it will execute the query
		
		if(rs.next())
		{
			HttpSession hs = request.getSession();
			
			hs.setAttribute("donarname", donarname);
			
			response.sendRedirect("/Blood_Donation_System/donar/donar_home.jsp");
		}
		
		else
		{
		request.setAttribute("message", "Please Check Your UserId And Password");
			
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/login.jsp");//relative path
			
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
