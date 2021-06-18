package landingPage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class register {

	private String dburl="jdbc:mysql://localhost:3306/userdb";
	private String dbuname="root";
	private String dbpassword="mysql";
	private String dbdriver="con.mysql.jdbc.Driver";
	 public void loadDriver(String dbDriver) 
	 {
		 try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	 }
	
	public Connection getconnection()
	
	{
		Connection con=null;
	try {
	con=DriverManager.getConnection(dburl, dbuname, dbpassword);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	
	return con;
	}
	
	public String insert(memeber memeber)
	{
		loadDriver(dbdriver);
		Connection con=getconnection();
		String result="Data entered successfully";
		String sql="insert into userdb.memeber values(?,?,?,?)";
		try {
			PreparedStatement  ps=con.prepareStatement(sql);
			ps.setString(1, memeber.getUname());
			ps.setString(2, memeber.getPassword());
			ps.setString(3, memeber.getEmail());
			ps.setString(4, memeber.getPhone());
			ps.setString(5, memeber.getLocation());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result="Data not entered";
		}
		return result;
	}
}
