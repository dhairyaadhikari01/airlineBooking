<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="dao.BookingDao" %>
<%@ page import="model.Booking" %>

<%
try {
int id=1;
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "airlinebooking";
String userid = "root";
String password = "1234";

Class.forName(driver);

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement(); 
String sql ="select max(id) from booking";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
id=resultSet.getInt(1);
//System.out.println(id);
session.setAttribute("id", id);
id=id+1;
request.getRequestDispatcher("available.jsp").forward(request, response);
}
}
	catch (ClassNotFoundException e) {
		e.printStackTrace();
		}
%>

