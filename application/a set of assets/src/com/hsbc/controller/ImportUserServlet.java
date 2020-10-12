package com.hsbc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hsbc.dao.ImportUserDAO;

public class ImportUserServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");

		HttpSession session = req.getSession();
//		ImportUserDAO obj = new ImportUserDAO();

		try {
			//obj.importUsers();
			session.setAttribute("result", "Successfully imported.");
			RequestDispatcher rd = req.getRequestDispatcher("ImportUser.jsp");
			rd.forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		} 

	}
}
