<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Login Success Page!</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<hr><br>
<h1>
<font color="green"><%=session.getAttribute("UserName") %>! Welcome to shopping center!</font>
</h1>
<br><br>
<font color="white"><a href="index.jsp">Click me</a> to log out!</font>

</body>
</html>