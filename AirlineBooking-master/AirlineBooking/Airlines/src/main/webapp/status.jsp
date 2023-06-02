<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<style>
body {
background-image: url('./image/plane.jpg');
background-repeat:no-repeat;
background-attachment:fixed;
background-size: 100% 100%;
}
</style>

<div align="center">
<%

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

<table border="1" style="width:100%">
<tr style="height:50px">

<td>Name</td>
<td>Age</td>
<td>Email</td>
<td>Passenger</td>
<td>Date</td>
<td>From</td>
<td>To</td>
<td>Status</td>
</tr>
<%
try{
String id = session.getAttribute("id").toString(); 
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from booking where id ='"+id+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td style="height:50px"><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("age") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("noofpassenger") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("source") %></td>
<td><%=resultSet.getString("destination") %></td>
<td>true</td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 
</div>
</body>
</html>