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
	
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		this.getServletContext().getRequestDispatcher("/WEB-INF/ForgotPin.jsp").forward(request, response);
		String page = "/ForgotPin.jsp";
        request.getRequestDispatcher(page).forward(request, response);
        
     
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		try {
			
			
			
			
			
			
		}
	catch(Exception e){
		e.printStackTrace();
		
	}

}
}
