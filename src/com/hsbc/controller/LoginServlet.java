package com.hsbc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hsbc.dao.AuthenticationDao;
import com.hsbc.dao.UserDao;
import com.hsbc.models.User;

public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int userid = Integer.parseInt(request.getParameter("userid"));
		String password = request.getParameter("password");
		AuthenticationDao authDao = new AuthenticationDao();
		UserDao userDao = new UserDao();
		/*
		The function verifyCredentials(userid, password) is written assuming that USERNAME and PASSWORD are stored in USERS table, If not then move the verifyCredentials(username, password) function from UserBeanDao to 
		 */
		if(authDao.verifyCredentials(userid, password)) {
			User currentUser = userDao.fetchUserDetails(userid);
			boolean lastLoginUpdated = userDao.updateLastLogin(userid);
			String role = authDao.getRole(userid);
					
			HttpSession session = request.getSession();
			session.setAttribute("userid", userid);
			session.setAttribute("currentUser",currentUser);
			
			if(role.equals("Admin")) {
				response.sendRedirect("AdminHome.jsp");
			} else {
				RequestDispatcher rd=request.getRequestDispatcher("BorrowAssetServlet");  
				try {
					rd.forward(request,response);
				} catch (ServletException | IOException e) {
					e.printStackTrace();
				}		
			}
			
		} else {
			response.sendRedirect("login.jsp");
		}
	}
}
