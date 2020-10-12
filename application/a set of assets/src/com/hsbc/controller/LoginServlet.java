package com.hsbc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hsbc.dao.UserDao;
import com.hsbc.pojo.User;

public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		// AuthenticationDao authDao = new AuthenticationDao();
		UserDao userDao = new UserDao();
		if(userDao.verifyCredentials(username, password)) {
			User currentUser = userDao.fetchUserDetails(username);
			
			boolean lastLoginUpdated = userDao.updateLastLogin(username);
			// String role = authDao.getRole(userid);
			String role = currentUser.getRole();
		    int userid=currentUser.getUserId();	
			HttpSession session = request.getSession();
			session.setAttribute("userid",userid);
		    session.setAttribute("currentUser",currentUser);
			if(role.equals("Admin")) {
				RequestDispatcher rd=request.getRequestDispatcher("AdminHome.jsp");
				//RequestDispatcher rd=request.getRequestDispatcher("Success2.jsp");
				//response.sendRedirect("AdminHome.jsp");
				try {
					
					rd.forward(request, response);
				} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else {
				//RequestDispatcher rd=request.getRequestDispatcher("borrowAssetServlet");  
				RequestDispatcher rd=request.getRequestDispatcher("UserHomepage.jsp");
				try {
					rd.forward(request,response);
				} catch (ServletException e) {
					e.printStackTrace();
				}		
			}
		} else {
			response.sendRedirect("index.jsp");
		}
	}
}