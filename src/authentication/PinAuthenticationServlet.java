package authentication;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AuthenticationServlet
 */
@WebServlet("/login")
public class PinAuthenticationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PinAuthenticationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher("/WEB-INF/PinAuth.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  String beneficiary_name = request.getParameter("beneficiary_name\n");
	      String pin = request.getParameter("pin");
	         
	        UserDAO userDao = new UserDAO();
	         
	        try {
	            User user = userDao.checkLogin(beneficiary_name, pin);
	            String destPage = "PinAuth.jsp";
	             
	            if (user != null) {
	                HttpSession session = request.getSession();
	                session.setAttribute("user", user);
	                destPage = "home.jsp";
	                System.out.print("Login successfully");
	            } else {
	                String message = "Invalid Beneficiary Name/pin";
	                request.setAttribute("message", message);
	                System.out.print("Login Failed\n");
	            }
	             
	            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
	            dispatcher.forward(request, response);
	             
	        } catch (SQLException | ClassNotFoundException ex) {
	            throw new ServletException(ex);
	        }
	}

//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
