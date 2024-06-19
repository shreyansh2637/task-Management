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


@WebServlet("/register1")
public class register extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String fname=(String)request.getParameter("fname");
		out.println(fname);
		String uid=(String)request.getParameter("uid");
		int mobile_number=Integer.parseInt(request.getParameter("mnumber"));
		String email=(String)request.getParameter("email");
		String pass=(String)request.getParameter("pass");
		HttpSession session=request.getSession();
		session.setAttribute("userid",uid);
		session.setAttribute("password",pass);
		response.sendRedirect("login.jsp");
		
	}
}


