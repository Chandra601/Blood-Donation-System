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

import  blood_donation_system.dbtask.DbConnection;

/**
 * Servlet implementation class ContactUs
 */
@WebServlet("/ContactUs")
public class ContactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
       
    public ContactUs() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String useremail = request.getParameter("useremail");
		String userphone = request.getParameter("userphone");
		String userquestion = request.getParameter("userquestion");
		
		java.util.Date d = new java.util.Date();

		java.sql.Date sd = new java.sql.Date(d.getTime());
		
		con = DbConnection.openConnection(); // database connection established

		PreparedStatement ps = null;

		try {

			String insert_query = "insert into contactus(name, email,phone,question,date)values(?,?,?,?,?)";

			ps = con.prepareStatement(insert_query);

			ps.setString(1, username);
			ps.setString(2, useremail);
			ps.setString(3, userphone);
			ps.setString(4, userquestion);
			ps.setDate(5, sd);

			int status = ps.executeUpdate();

			if (status > 0) {
				
				request.setAttribute("message", "thank you for ContactUs");

				RequestDispatcher rd = request.getRequestDispatcher("/jsp/contactus.jsp");// relative path

				rd.forward(request, response);
			}

		}//try close
		catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
	}

}
