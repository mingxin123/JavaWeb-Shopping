<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	</head>
	<body>
	
	<form class="box" action="do_login.jsp" method="get">
	<br>
	<h1></h1><br>
	USERNAME<input type="text" name="name" ><br>
	PASSWORD <input type="password" name="password" ><br>
	<br>
	<input type="submit" name="b2" value="login" onclick="window.open(do_login.jsp)"> <br>
	<br>
	<a href="register.jsp">Create your account</a>
	
	</form>
	

</body>
</html>