package dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.Booking;

public class BookingDao {
	 public int registerBooking(Booking booking) throws Exception {
	        String INSERT_USERS_SQL = "INSERT INTO booking" +
	            "  ( name, age, email, date, noofpassenger,source,destination) VALUES " +
	            " (?, ?, ?, ?, ?,?,?);";
	        
	        int result = 0; 
   
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        try (Connection con=  DriverManager.getConnection("jdbc:mysql://localhost:3306/airlinebooking","root","1234");
	        		

	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = con.prepareStatement(INSERT_USERS_SQL, Statement.RETURN_GENERATED_KEYS))
	        {
	            preparedStatement.setString(1, booking.getFullName());
	            preparedStatement.setString(2, booking.getAge());
	            preparedStatement.setString(3, booking.getEmail());
	            preparedStatement.setString(4, booking.getDate());
	            preparedStatement.setString(5, booking.getSeats());
	            preparedStatement.setString(6, booking.getFrom());
	            preparedStatement.setString(7, booking.getTo());
	            
	            
	            
	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            result = preparedStatement.executeUpdate();
	            ResultSet rs = preparedStatement.getGeneratedKeys();
	            while (rs.next()) {
	            	//String  id= rs.getString(1);
		           //System.out.println("this is the id"+id);
	            }
	            
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

