<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
background-image: url('./image/sign.jpg');
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
 <h3>Sign Up</h3>
<form action ="signupAction.jsp" >
Enter name      <input type="text" name="name" placeholder="Enter name" ><br><br><br>
Enter email		<input type="email" name="email" placeholder="Enter email" ><br><br><br>
Enter mobile	<input type="number" name="mobilenumber" placeholder="Enter mobile" ><br><br><br>
Enter password 	<input type="password" name="password" placeholder="Enter password" ><br><br><br>
<input type="submit" value="signup">
</form>
<h2><a href="login.jsp">login</a></h2>

<div class="whysign">
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully registered</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Something wrong</h1>
<%} %>
</div>
</div>
</body>
</html>