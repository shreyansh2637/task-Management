<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TaskHive</title>
    <link rel="stylesheet" href="style.css">
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
            	Hello! <%=session.getAttribute("userid") %> &nbsp; &nbsp;
                <a href="index.html">Logout</a>
            </div>
        </nav>
        <section class="h-txt">
            <h1>Welcome! </h1>
            <p>Manage your Task</p>
            <br>
        </section>
    </header>
</body>
</html>