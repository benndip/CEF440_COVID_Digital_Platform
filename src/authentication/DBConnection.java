package authentication;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {
	 protected static Connection getConnection() throws SQLException, ClassNotFoundException
	 {
		 
	 
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/mobile_programming","root","");  
		//here sonoo is database name, root is username and password  
		
	 return con;
		}

}

