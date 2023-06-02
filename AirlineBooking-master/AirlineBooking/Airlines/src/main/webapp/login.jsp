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
<title>login</title>
</head>
<body>
 <div align="center">
<h3>Login</h3>
<div class="whysignlogin">

<form action="loginAction.jsp" method="post">
Email	<input type="email" name= "email" placeholder="Enter email"><br><br><br>
Password	<input type="password" name= "password" placeholder="Enter password"><br><br><br>
<input type="submit" value="login">
</form>
<h2><a href="signup.jsp"></a></h2>
<div class="whysignLogin">
<%
String msg= request.getParameter("msg");
if("notexist".equals(msg))
{
%>
<h2>Incorrect username or password</h2>
<%} %>
<%if("invalid".equals(msg))
{
%>
<h2>Something went wrong</h2>
<%} %>



</div>
</div>
</div>
</body>
</html>