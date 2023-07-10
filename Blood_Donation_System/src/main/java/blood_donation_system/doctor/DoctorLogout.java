package blood_donation_system.doctor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DoctorLogout
 */
@WebServlet("/DoctorLogout")
public class DoctorLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs = request.getSession(false); 
 		hs.removeAttribute("doctorname");
 		hs.invalidate();
 		response.sendRedirect("/Blood_Donation_System/jsp/index.jsp");
	}

}
