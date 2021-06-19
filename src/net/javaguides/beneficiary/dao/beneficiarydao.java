
package net.javaguides.beneficiary.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.javaguides.beneficiary.model.beneficiary;

public class beneficiarydao {


	    public int registerbeneficiary(beneficiary covid_beneficiary) throws ClassNotFoundException {
	        String INSERT_USERS_SQL = "INSERT INTO beneficiary" +
	            "  (id,covidcounter,aidscounter,hpbcounter,diabetescounter,cardiacdiseasecounter,cancercounter,lungdiseasecounter,asthmacounter) VALUES " +
	            " (?, ?, ?, ?, ?, ?, ?, ?, ?);";

	        int result = 0;

	        Class.forName("com.mysql.jdbc.Driver");

	        try (Connection connection = DriverManager
	            .getConnection("jdbc:mysql://localhost:3306/mysql_database?useSSL=false", "root", "root");

	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
	            preparedStatement.setInt(1, 1);
	            preparedStatement.setString(2, covid_beneficiary.getCovidcounter());
	            preparedStatement.setString(3, covid_beneficiary.getAidscounter());
	            preparedStatement.setString(4, covid_beneficiary.getHpbcounter());
	            preparedStatement.setString(5, covid_beneficiary.getDiabetescounter());
	            preparedStatement.setString(6, covid_beneficiary.getCardiacdiseasecounter());
	            preparedStatement.setString(7, covid_beneficiary.getCancercounter());
	            preparedStatement.setString(8, covid_beneficiary.getLungdiseasecounter());
	            preparedStatement.setString(9, covid_beneficiary.getAsthmacounter());

	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            result = preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            // process sql exception
	            printSQLException(e);
	        }
	        return result;
	    }

	    private void printSQLException(SQLException ex) {
	        for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }
	}
