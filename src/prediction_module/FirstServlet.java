package prediction_module;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstServlet
 */
@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public FirstServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.setContentType("text/html");
//		response.setCharacterEncoding("UTF-8");
//		PrintWriter out = response.getWriter();
//		out.println("<!DOCTYPE html>");
//		out.println("<html>");
//		out.println("<head>");
//		out.println("<meta charset=\"utf-8\" />");
//		out.println("<title>Test</title>");
//		out.println("</head>");
//		out.println("<body>");
//		out.println("<p>this is my first servlet page</p>");
//		out.println("</body>");
//		out.println("</html>");
		this.getServletContext().getRequestDispatcher("/WEB-INF/FristJsp.jsp").forward(request, response);}
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name1");
	   String age = request.getParameter("age1");
	   String sex = request.getParameter("sex1");
	   String location = request.getParameter("location1");
	   String job = request.getParameter("job1");
	   String infected = request.getParameter("infected1");
	   
	   request.setAttribute("name2", name);
	   request.setAttribute("age2", age);
	   request.setAttribute("sex2", sex);
	   request.setAttribute("location2", location);
	   request.setAttribute("jod2", job);
	   request.setAttribute("infected2", infected);
	   
	   System.out.println("the name: "+ name +" the age:" + age + "the sex:"+ sex + 
			   "location:" + location +"your are a:"+job+ "are you infected:"+ infected );
		this.getServletContext().getRequestDispatcher("/WEB-INF/result.jsp").forward(request, response);
	
	}

}
