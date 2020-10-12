package com.hsbc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hsbc.dao.AssetDao;
import com.hsbc.pojo.AssetBean;

/**
 * Servlet implementation class AddAssetServlet
 */
@WebServlet("/AddAssetServlet")
public class AddAssetServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		AssetBean asset = new AssetBean();
		asset.setAssetId(101);
		asset.setSubcategory(request.getParameter("subcategory"));
		asset.setCategory(request.getParameter("category"));
		asset.setDateAdded(LocalDate.now());
		asset.setDescription(request.getParameter("description"));
		asset.setAvailable(false);
		
		AssetDao dao = new AssetDao();
		System.out.println(asset);
		dao.addAsset(asset);
//		if(count == 0)
//		{
//			response.setContentType("text/html");
//			PrintWriter out = response.getWriter();
//			out.print("<html>");
//			out.print("<body><h1>Asset add unsuccessful</h1></body>");
//			out.print("<a href = \"AddAsset.jsp\">Click to try again...</a>");
//			out.print("</html>");
//		}
		RequestDispatcher rd = request.getRequestDispatcher("AddNewAsset.jsp");
		rd.forward(request, response);
		
		
	}

}
