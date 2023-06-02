<%@page import="notification.Email" %> 
<!DOCTYPE html>
<html>
<head>
<style>
body {
background-image: url('./image/feedback.jpg');
background-repeat:no-repeat;
background-attachment:fixed;
background-size: 100% 100%;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
  <h1>Feedback Form</h1>
  <form action="<%= request.getContextPath() %>/FeedbackServlet" method="post">
   <table style="with: 80%">
    <tr>
     <td>Name</td>
     <td><input type="text" name="name" /></td>
    </tr>
    <tr>
     <td>Email</td> 
     <td><input type="text" name="email" /></td>
    </tr>

    <tr>
     <td>Message</td>
     <td><input type="text" name="message" /></td>
    </tr>
   </table>
   <%  //invoking the email function in the email.java class
Email.sendEmail("You have successfully booked the flight","confirmation","dhairya.adhikari1@gmail.com","adhairya931@gmail.com");
%> 
   <input type="submit" value="Submit" />
  <input type="button" value="select" onclick="window.location='homepage.jsp'" >
  </form>
 </div>
</body>
</html>