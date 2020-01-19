<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page language="java" import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert information here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
   <script>
		function addCheck(){
			var username=document.getElementById("username").value;
			var password=document.getElementById("password").value;
			var name =document.getElementById("name").value;
			var email =document.getElementById("email").value;
			var sex =document.getElementById("sex").value;
			if(username=="" || password==""|| name==""||email==""||sex==""){
				alert("Fill out everything!");
				document.getElementById("username").focus();  
				return false;
            }	
		}
		function validate(){
		    var flag = addCheck();
		    if(flag == false)
		        return false;
		    return true;
	    }
	</script>

	<form class="box" action="check_reg.jsp" method="post" onsubmit="return validate()">
       Full name
       <input type="text" name="name" placeholder="enter your name">
       Email
       <input type="text" name="email" placeholder="enter your email">
       Sex
       <input type="text" name="sex" placeholder="enter your sex">
       Username
       <input type="text" name="username" placeholder="enter your username">
       Password
       <input type="text" name="password" placeholder="enter your password">
       <br><input type="submit" value="Register"><br><br>
	<font color="white"><a href="index.jsp">Click me</a> to go back!</font>
	</form>
	
</body>
</html>