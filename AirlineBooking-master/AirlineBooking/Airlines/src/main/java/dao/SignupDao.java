package dao;
import java.sql.*;
public class SignupDao {

	public static Connection getCon()
	{
		try
		{
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con=  DriverManager.getConnection("jdbc:mysql://localhost:3306/airlinebooking","root","1234");
    		return con;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return null;
		}
	}
	
}
