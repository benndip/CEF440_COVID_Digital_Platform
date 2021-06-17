package authentication;

import java.io.IOException;


import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ForgotPinServlet
 */
@WebServlet("/ForgotPinServlet")
public class ForgotPinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
//	
//	 
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
////		this.getServletContext().getRequestDispatcher("/WEB-INF/ForgotPin.jsp").forward(request, response);
//		String page = "/WEB-INF/ForgotPin.jsp";
//        request.getRequestDispatcher(page).forward(request, response);
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		try {
			Connection conn = DBConnection.getConnection(); 
			
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			PreparedStatement ps = conn.prepareStatement("update email_password set password=? where email = ?");
			ps.setString(2,email);
			ps.setString(1, password);

			int i = ps.executeUpdate();
			
			if(i>0) {
				response.sendRedirect("updatedPassword.jsp");
			}
			else {
				response.sendRedirect("error.jsp");
			}		
			
		}
	catch(Exception e){
		e.printStackTrace();
		
	}

}
}
