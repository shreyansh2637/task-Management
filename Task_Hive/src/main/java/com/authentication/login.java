package com.authentication;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login1")
public class login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		

		String uid=(String)request.getParameter("uid");
		String pass=(String)request.getParameter("pass");
		HttpSession session=request.getSession();
		String get_uid=(String)session.getAttribute("userid");
		String get_pass=(String)session.getAttribute("password");

		PrintWriter out=response.getWriter();
		if(uid.equals(get_uid) && pass.equals(get_pass))
		{
			response.sendRedirect("user.jsp");
		}
		else {
			
			out.println("<script type=\"text/javascript\">");
	       out.println("alert('User or password incorrect');");
	       out.println("</script>");
//	       response.sendRedirect("login.jsp");
		}
	}

}
