package blood_donation_system.donar;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DonarLogout
 */
@WebServlet("/DonarLogout")
public class DonarLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs = request.getSession(false); // to get the reference of existing session
 		hs.removeAttribute("donarId");
 		hs.invalidate();//it is used to destroy the session
 		response.sendRedirect("/Blood_Donation_System/jsp/login.jsp");	
	}

}
