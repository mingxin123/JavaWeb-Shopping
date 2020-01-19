<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
</head>
	<body>
	
	<%
	 String name=request.getParameter("name");
	 String password=request.getParameter("password");
	%>
	
	<%
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pets", "root", "root");
	 Statement stmt = conn.createStatement();
	 String queryNumberSQL = "SELECT * from users where username='"+name+"' and password='"+password+"'";
	 ResultSet rs = stmt.executeQuery(queryNumberSQL);
	 
	 boolean flag = false;
	 if(rs.next()){
	 	flag=true;
	 	session.setAttribute("UserName", name);
	 }else{
	 	flag=false;
	 }
	
	%>
	<%
	 if(flag){
	%>
	<jsp:forward page="login_success.jsp"></jsp:forward>
	<%
	 }else{
	
	%>
	<jsp:forward page="login_fail.jsp"></jsp:forward>
	<%
	 }

	rs.close();
	stmt.close();
	conn.close();
	
	%>

</body>
</html>