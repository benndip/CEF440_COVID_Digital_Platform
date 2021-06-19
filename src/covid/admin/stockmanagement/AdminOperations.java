package covid.admin.stockmanagement;

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
 * Servlet implementation class AdminOperations
 */
@WebServlet("/AdminOperations")
public class AdminOperations extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private final String url = "jdbc:postgresql://localhost:5432/postgres";
	private final String user = "postgres";
	private final String password = "covidapp";
	
    public AdminOperations() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		/* 
		 * 	
		 * Admin SELECT (GET Request) GOODS from the DATABASE
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
				
				request.setAttribute("goods_info", goods_info);
				
				}
				catch (SQLException e) {
				    System.out.println(e.getMessage());
				}
        
        this.getServletContext().getRequestDispatcher("/WEB-INF/AdminInterface.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 *  Admin POSTING (POST) Goods To The DATABASE
		 * 
		 */
		
		String goods_name = request.getParameter("goods_name");
		String admin_id = request.getParameter("admin_id");
		String productQ = request.getParameter("product_quantity");
		int product_quantity;
		
		if(goods_name == "" || admin_id == "" || productQ == "" || productQ != "") {
			if(goods_name == "") {
				request.setAttribute("goodsNameError", "Error good name is required!");
			}
			if(admin_id == "") {
				request.setAttribute("adminIdError", "Error an admin id is required!");
			}
			if(productQ == "") {
				request.setAttribute("productQuantityError", "Error name is required!");
			}
			if(productQ != "") {
				try {
					Integer.parseInt(productQ);
				} catch (NumberFormatException e) {
					request.setAttribute("productQuantityError", "Error enter a valid number!");
				}
				
			}
			request.setAttribute("goodsName", goods_name);
			request.setAttribute("productQuality", productQ);
			request.setAttribute("adminId", admin_id);
			this.getServletContext().getRequestDispatcher("/WEB-INF/AdminInterface.jsp").forward(request, response);
			return;
		}
		
		
		
		product_quantity = Integer.parseInt(productQ);
		
        Date admin_date = new Date();  
        SimpleDateFormat admin_formatter = new SimpleDateFormat("MM/dd/yyyy");  
        String goods_added_date = admin_formatter.format(admin_date);
        
        String add_goods_query = "INSERT INTO goods(goods_name, admin_id, product_quantity, goods_added_date) VALUES(?,?,?,?)";
		
          try {
            
            Connection con = DriverManager.getConnection(url, user, password);
            
            PreparedStatement pst = con.prepareStatement(add_goods_query);
            
            pst.setString(1, goods_name);
            pst.setString(2, admin_id);
            pst.setInt(3, product_quantity);
            pst.setString(4, goods_added_date);
            pst.executeUpdate();
   
        pst.close();
        con.close();
        
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
        }
          
          
		doGet(request, response);
	}

}
