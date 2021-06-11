package authentication;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	public User checkLogin(String beneficiary_name, String pin) throws SQLException,
    ClassNotFoundException {
String jdbcURL = "jdbc:mysql://localhost:3306/covid19";
String dbUser = "root";
String dbPassword = "";

Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
String sql = "SELECT * FROM users WHERE beneficiary_name = ? and pin = ?";
PreparedStatement statement = connection.prepareStatement(sql);
statement.setString(1, beneficiary_name);
statement.setString(2, pin);

ResultSet result = statement.executeQuery();

User user = null;

if (result.next()) {
    user = new User();
    user.setBeneficiary_name(result.getString("beneficiary_name"));
}

connection.close();

return user;
}

}
