<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<link rel="stylesheet" href="style.css">
<body>
</head>
	<body>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	/*here mysqltest is the database name. you have to give the database name you have created and 3306 is the default sql port */
	String connectionURL = "jdbc:mysql://localhost:3306/pets"; 
	 
	Connection conn = null; 
	 
	
	 
	/* "root" and "root" are the mysql username and password . if you have a different user name and password you have to change that in code */
	 
	conn = DriverManager.getConnection(connectionURL, "root", "root");
	
	Statement stmt =conn.createStatement();
	
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String sex = request.getParameter("sex");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	PreparedStatement pStmt = conn.prepareStatement("select * from users where username = '" + username + "'");
    ResultSet rs = pStmt.executeQuery();
    if(rs.next()){
        out.println("<script language='javascript'>alert('User Existed or Empty Information！');window.location.href='register.jsp';</script>");
    }else{
    	String Query = "insert into users values('"+name+"','"+email+"','"+sex+"','"+username+"','"+password+"')";
   		int rst = stmt.executeUpdate(Query);
           if (rst != 0){
               out.println("<script language='javascript'>alert('Registered！');window.location.href='index.jsp';</script>");  
           }else{
              out.println("<script language='javascript'>alert('Failed！');window.location.href='register.jsp';</script>");  
           }
    }

	%>
	<hr><br>
	<h1><%=request.getParameter("name") %>, you login successfully!</h1><br>
	
	<%

	stmt.close();
	conn.close();
	
	%>
	
	<font color="red"><a href="index.jsp">Click me</a> to log out!</font>
	

</body>
</html>