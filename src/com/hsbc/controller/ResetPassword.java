package com.hsbc.controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.hsbc.dao.UserBeanDao;

public class ResetPassword extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		boolean passwordChanged = false;
		
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		String answer = (String) session.getAttribute("");
		UserBeanDao myUser = new UserBeanDao();
		
		// Sent by Form 2 from forgotpassword.jsp
		String userEnteredAnswer = request.getParameter("userEnteredAnswer");
		String newPassword = request.getParameter("newPassword");
		if(answer.equals(userEnteredAnswer)) {
			passwordChanged = myUser.changePassword(username, newPassword);
		}
		
		
		if(passwordChanged) {
			session.setAttribute("passwordChange","successful");
		} else {
			session.setAttribute("passwordChange","failed");
		}
		
		response.sendRedirect("forgotpassword.jsp");
	}
}
