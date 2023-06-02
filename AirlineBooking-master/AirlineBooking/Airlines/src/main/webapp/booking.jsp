<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="dao.BookingDao" %>
<%@ page import="model.Booking" %>
<style>
body {
background-image: url('./image/air.jpg');
background-repeat:no-repeat;
background-attachment:fixed;
background-size: 100% 100%;
}

</style>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
  <h1>Booking Ticket</h1>
  <form action="<%= request.getContextPath() %>/register" method="post">
   <table style="with: 100%">
    <tr> 
     <td>FullName</td>
     <td><input type="text" name="fullName"  value="" required="required" /></td> 
    </tr>
    <tr>
     <td>Age</td>
     <td><input type="number" name="age" required="required"/></td>
    </tr>
    <tr>
     <td>Email</td> 
     <td><input type="email" name="email" required="required"/></td>
    </tr>
    <tr>
     <td>Date</td>
     <td><input type="date" name="date" required="required"/></td>
    </tr>
    <tr>
     <td>Seats</td>
     <td><input type="number" name="seats"required="required" /></td>
    </tr>
     <tr>
     <td><label for="from" >From</label></td>
       <td> <select name="from" id="from" >
    <option value="from">--Please choose an option--</option>
    <option value="New Delhi">New Delhi</option>
    <option value="Mumbai">Mumbai</option>
    <option value="Chennai">Chennai</option>
    <option value="Kolkata">Kolkata</option>   
</select>
</td> 
    </tr>
     <tr>
     <td><label for="to">To</label></td>
       <td> <select name="to" id="to">
    <option value="to">--Please choose an option--</option>
    <option value="New Delhi">New Delhi</option>
    <option value="Mumbai">Mumbai</option>
    <option value="Chennai">Chennai</option>
    <option value="Kolkata">Kolkata</option>    
</select>
</td>
    </tr>
   </table>
   <input type="submit" value="Submit" />
  </form>
 </div>

</body>
</html>