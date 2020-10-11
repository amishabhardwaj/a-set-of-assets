package com.hsbc.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hsbc.dao.*;
import com.hsbc.pojo.OverdueDate;

public class ByDateServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");

		HttpSession session = req.getSession();
		String str = req.getParameter("date");

		ByDateDAO obj = new ByDateDAO();

		try {
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
			Date date = formatter.parse(str);
			
			List<OverdueDate> list = obj.selectUserByDate(date);
//			System.out.println("from servlet " + list);
			session.setAttribute("list", list);
			RequestDispatcher rd = req.getRequestDispatcher("searchByDate.jsp");
			rd.forward(req, resp);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}