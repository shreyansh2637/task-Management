<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<header>
    <nav>
    <div class="logo">
        <img src="task_logo1.jpg" alt="">
        Task-Hive
    </div>
    <div class="menu">
        <a href="index.html"> Home</a>
        <a href="#">About us</a>
        <a href="#">Feedback</a>
    </div>
    <div class="register">
        <a href="register.jsp">Register</a>
    </div>
</nav>
<div class="back">
    <form action="#" class="register_form">
        <h1>Login</h1>
        <p>UserId:</p>
        <input type="text" name="uid" placeholder="UserId" class="inputfield">
        <p>Password:</p>
        <input type="password" name="pass" placeholder="Password" class="inputfield">
        <br>
        <button type="submit" class="button" onClick="handleClick()">Login</button>
    </form>
</div>
</header>
function handleClick(){
<%
		String get_uid=(String)session.getAttribute("userid");
		String get_pass=(String)session.getAttribute("password");
		String uid=(String)request.getParameter("uid");
		String pass=(String)request.getParameter("pass");
		if(get_uid.equals(uid) && get_pass.equals(pass))
		{
			response.sendRedirect("user.jsp");
		}
		else{%>
		
			alert("Invalid credentials");
			<% 
			}
		%>
	}
</body>
</html>