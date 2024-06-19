<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
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
        <a href="login.jsp">Login</a>
    </div>
</nav>
<div class="back">
    <form action="register1" class="register_form">
        <h1>Register User</h1>
        <p>Full Name:</p>
        <input type="text" name="fname" placeholder="Full Name" class="inputfield" >
        <p>UserId:</p>
        <input type="text" name="uid" placeholder="UserId" class="inputfield">
        <p>Mobile Number:</p>
        <input type="number" name="mnumber" placeholder="Moblie Number" class="inputfield">
        <p>Email:</p>
        <input type="email" name="email" placeholder="Email" class="inputfield">
        <p>Password:</p>
        <input type="password" name="pass" placeholder="Password" class="inputfield">
        <br>
        <button type="submit" class="button">Register</button>
        
    </form>
</div>
</header>
</body>
</html>