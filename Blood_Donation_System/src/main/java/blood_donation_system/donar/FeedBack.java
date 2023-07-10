package blood_donation_system.donar;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blood_donation_system.dbtask.DbConnection;

/**
 * Servlet implementation class FeedBack
 */
@WebServlet("/FeedBack")
public class FeedBack extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
    public FeedBack() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String useremail = request.getParameter("useremail");
		String userdate = request.getParameter("userdate");
		String userfeedback = request.getParameter("userfeedback");
		String userrating = request.getParameter("userRating");
		
		java.util.Date d = null;

		try {
			d = new SimpleDateFormat("yyyy-MM-dd").parse(userdate);
		} catch (ParseException pe) {
			pe.printStackTrace();
		}

		java.sql.Date sd = new java.sql.Date(d.getTime());
		
		con = DbConnection.openConnection(); // database connection established

		PreparedStatement ps = null;

		try {

			String insert_query = "insert into feedback(name, email, feedback, rating, date)values(?,?,?,?,?)";

			ps = con.prepareStatement(insert_query);

			ps.setString(1, username);
			ps.setString(2, useremail);
			ps.setString(3, userfeedback);
			ps.setString(4, userrating);
			ps.setDate(5, sd);

			int status = ps.executeUpdate();

			if (status > 0) {
				request.setAttribute("message", "Thank You For FeedBack");

				RequestDispatcher rd = request.getRequestDispatcher("/jsp/feedback.jsp");// relative path

				rd.forward(request, response);
			}

		} // try close
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
