<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="notification.Email" %> 

<style>
body {
background-image: url('./image/payment.jpg');
background-repeat:no-repeat;
background-attachment:fixed;
background-size: 100% 100%;
}

</style>

<div align="center">
<%
String id = session.getAttribute("id").toString(); 
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
<td>id</td>
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
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from booking where id ='"+id+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr>
<td style="height:50px"><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
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

      <div class="card-details" >
        <h2>Pay using Credit or Debit card</h2>
  
        <div class="card-number">
          <label> Card Number </label>
          <input
            type="number"
            class="card-number-field"
            placeholder="###-###-###"/>
        </div>
        <br />
        <div class="date-number">
          <label> Expiry Date </label>
          <input type="date" class="date-number-field" 
                 placeholder="DD-MM-YY" />
        </div>
        
        <div class="cvv-number">
          <label> CVV number </label>
          <input type="number" class="cvv-number-field" 
                 placeholder="xxx" />
        </div>
        <div class="nameholder-number">
          <label> Card Holder name </label>
          <input
            type="text"
            class="card-name-field"
            placeholder="Enter your Name"/>
        </div>
   <input type="button" value="Pay" onclick="window.location='feedback.jsp'"  >
      </div>
    </div>
  </body>
</html>


</body>
</html>