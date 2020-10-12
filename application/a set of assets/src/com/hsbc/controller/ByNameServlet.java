package com.hsbc.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hsbc.dao.*;
import com.hsbc.pojo.OverdueName;

public class ByNameServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");

		HttpSession session = req.getSession();
		String name = req.getParameter("name");

		ByNameDAO obj = new ByNameDAO();

		try {
			List<OverdueName> list = obj.selectUserByName(name);
//			System.out.println("from servlet "+list);
			session.setAttribute("list", list);
			RequestDispatcher rd = req.getRequestDispatcher("searchByName.jsp");
			rd.forward(req, resp);
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}