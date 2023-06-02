<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.SignupDao"%>
<%@page import="java.sql.*"%>

<%
try
{
Connection con=SignupDao.getCon();
Statement st=con.createStatement();
String q1="create table users(name varchar(100),email varchar(100) primary key, mobilenumber bigint,password varchar(100))";
System.out.println(q1);
st.execute(q1);
System.out.println("table created");
}
catch(Exception e)
{
	System.out.println(e);
}

%>