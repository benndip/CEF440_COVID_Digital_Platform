package com.ub.fet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class firstservlet
 */
@WebServlet("/firstservlet")
public class firstservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public firstservlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	/*response.setContentType("text/html");
	response.setCharacterEncoding("UTF-8");
	PrintWriter out = response.getWriter();
	out.println("<!Doctype html>");
	out.println("<html>");
	out.println("<h1>this is a page generated from servlet</h1>");
	out.println("</html>");*/
		//this.getServletContext().getRequestDispatcher("/WEB-INF/firstgspfile.jsp").forward(request,response);

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		System.out.println("the name:" + name + "the age" + age);
		request.setAttribute("name1", name);
		request.setAttribute("age1", age);
		this.getServletContext().getRequestDispatcher("/WEB-INF/result.jsp").forward(request,response);
		//doGet(request, response);
		
	}

}
