package landingPage;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * Servlet implementation class DemoServlet
 */
@WebServlet("/DemoServlet")
public class DemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DemoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        try {
        	String town= request.getParameter("town");
        	String quater= request.getParameter("quater");
        	String region= request.getParameter("region");
             Connection conn = DatabaseConnection.initializeDatabase();
  
             String QUERY = "SELECT FROM HOUSEHOLD (infected,total,name)"
                   		+ " WHERE town="+town+" AND quater="+quater+" AND region="+region;
  
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(QUERY);
             Family fam []= {};
          	    
             int i=0;
             while(rs.next()){
                
                 fam[i]= new Family(rs.getString("name"), rs.getString("infected"), rs.getString("total"));
               i++;
             }
             
             request.setAttribute("ResultSet", fam);
             }
        catch (Exception e) {
            e.printStackTrace();
            
        }

	}

}
