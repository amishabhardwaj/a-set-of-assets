package com.hsbc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hsbc.dao.AssetDao;

/**
 * Servlet implementation class ReturnAssetServlet
 */
@WebServlet("/ReturnAssetServlet")
public class ReturnAssetServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int assetId = Integer.parseInt(request.getParameter("assetid"));
		int transactionId = Integer.parseInt(request.getParameter("transactionid"));
		AssetDao dao = new AssetDao();
		dao.returnAsset(transactionId , assetId);
		RequestDispatcher rd = request.getRequestDispatcher("userReturn.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
