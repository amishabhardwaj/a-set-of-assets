package com.hsbc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hsbc.dao.CategoryDao;
import com.hsbc.pojo.CategoryBean;

/**
 * Servlet implementation class AddCategoryServlet
 */
@WebServlet("/AddCategoryServlet")
public class AddCategoryServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CategoryBean category = new CategoryBean();
		
		category.setName(request.getParameter("categoryname"));
		category.setLendingPeriod(Integer.parseInt(request.getParameter("lendingperiod")));
		category.setFine(Integer.parseInt(request.getParameter("fine")));
		category.setBanPeriod(Integer.parseInt(request.getParameter("banperiod")));
		
		CategoryDao dao = new CategoryDao();
		
		dao.addCategory(category);
		RequestDispatcher rd = request.getRequestDispatcher("AddNewAsset.jsp");
		rd.forward(request, response);
		
	}

}
