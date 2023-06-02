<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="dao.BookingDao" %>
<%@ page import="model.Booking" %>



<style>
body {
background-image: url('./image/airport.jpg');
background-repeat:no-repeat;
background-attachment:fixed;
background-size: 100% 100%;
}

</style>

<div align="center">
<%

String id = session.getAttribute("id").toString(); 
//System.out.println(id);
String to = (String)request.getAttribute("to");
String from = (String)request.getAttribute("from");
String date = (String)request.getAttribute("date");

String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "airlinebooking";
String userid = "root";
String password = "1234";

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<table border="1" style="width:100%" >
<tr style="height:50px">
<td>Flight</td>
<td>From</td>
<td>To</td>

<td>Departure</td>
<td>Arrival</td>
<td>Price</td>
<td>Select</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from flights where source='"+from+"' and destination='"+to+"'" ;
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr >
<td style="height:50px"><%=resultSet.getString("flightnumber") %></td>
<td><%=resultSet.getString("source") %></td>
<td><%=resultSet.getString("destination") %></td>

<td><%=resultSet.getString("departure") %></td>
<td><%=resultSet.getString("arrival") %></td>
<td><%=resultSet.getString("price") %></td>
<td><input type="button" value="select" onclick="window.location='payement.jsp'" ></td>
</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 
<%
//BookingDao object= new BookingDao();
//Booking booking = new Booking();
//int id =object.registerBooking(booking);
//System.out.println(id);
%>
</div>
</body>
</html>