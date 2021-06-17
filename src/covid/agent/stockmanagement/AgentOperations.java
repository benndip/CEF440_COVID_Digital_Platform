package covid.agent.stockmanagement;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AgentOperations
 */
@WebServlet("/AgentOperations")
public class AgentOperations extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private final String url = "jdbc:postgresql://localhost:5432/postgres";
	private final String user = "postgres";
	private final String password = "covidapp";
	
    public AgentOperations() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 
		 * 	
		 * Agent SELECT (GET Request) GOODS from the DATABASE
		 * 
		 */
		
			String get_goods_query = "SELECT * FROM goods";
        	String goods_info[] = new String[6];

        try {
    
	  		Connection con = DriverManager.getConnection(url, user, password);
    
	  		PreparedStatement pst = con.prepareStatement(get_goods_query);
    
				    ResultSet rs = pst.executeQuery();
				    
				    while (rs.next()) {
				        
				    	goods_info[0] = Integer.toString(rs.getInt("goods_id"));
				    	goods_info[1] = rs.getString("admin_id");
				    	goods_info[2] = rs.getString("goods_name");
				    	goods_info[3] = rs.getString("product_quantity");
				    	goods_info[4] = rs.getString("goods_added_date");
				        
				    }
				
				rs.close();
				pst.close();
				con.close();
				
				request.setAttribute("name1", goods_info);
				
				}
				catch (SQLException e) {
				    System.out.println(e.getMessage());
				}
        
        	request.setAttribute("goods_info", goods_info);
        
		this.getServletContext().getRequestDispatcher("/WEB-INF/AgentInterface.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
        String distribution_agent_id = request.getParameter("distribution_agent_id");
  		String distribution_patient_id = request.getParameter("distribution_patient_id");
  		String distribution_product_id = request.getParameter("distribution_product_id");
  		String distribution_region = request.getParameter("distribution_region");
  		int quantity= Integer.parseInt(request.getParameter("product_quantity"));
  		
          Date agent_date = new Date();  
          SimpleDateFormat agent_formatter = new SimpleDateFormat("MM/dd/yyyy");  
          String distribution_date = agent_formatter.format(agent_date);
          
          String goods_distribution_details_query = "INSERT INTO goods_distribution_details(distribution_agent_id, distribution_patient_id, distribution_product_id, distribution_region, distribution_date, quantity) VALUES(?,?,?,?,?,?)";
  		
            try {
              
              Connection con = DriverManager.getConnection(url, user, password);
              
              PreparedStatement pst = con.prepareStatement(goods_distribution_details_query);
              
              pst.setString(1, distribution_agent_id);
              pst.setString(2, distribution_patient_id);
              pst.setString(3, distribution_product_id);
              pst.setString(4, distribution_region);
              pst.setString(5, distribution_date);
              pst.setInt(6, quantity);
              pst.executeUpdate();
              
              String update_quantity = "UPDATE goods SET product_quantity=(SELECT product_quantity FROM goods WHERE distribution_product_id='"+distribution_product_id+"') - '"+quantity+"' WHERE distribution_product_id='"+distribution_product_id+"'";
     
              PreparedStatement pst2 = con.prepareStatement(update_quantity);
              pst2.executeUpdate();
              
          pst.close();
          pst2.close();
          con.close();
          
          }
          catch (SQLException e) {
              System.out.println(e.getMessage());
          }
            
		doGet(request, response);
	}

}
