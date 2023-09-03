package com.hsbc.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import com.hsbc.dao.AssetDao;
import com.hsbc.dao.AuthenticationDao;
import com.hsbc.dao.BorrowDao;
import com.hsbc.dao.OverdueDao;
import com.hsbc.models.Asset;
import com.hsbc.models.Authentication;
import com.hsbc.models.Overdue;

public class BorrowAssetServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String assetIdToBorrow = request.getParameter("assetIdToBorrow");
		System.out.println("Borrowing :" + assetIdToBorrow);

		// Check if user is logged in
		HttpSession session = request.getSession();
		if (session.getAttribute("userid") == null) {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		System.out.println("User Login Over");

		// Above lines confirmed user's login, Now fetch his username
		int userId = (int) session.getAttribute("userid");
		System.out.println("Got user id");

		AuthenticationDao authDao = new AuthenticationDao();
		BorrowDao borrowDao = new BorrowDao();
		OverdueDao overdueDao = new OverdueDao();
		AssetDao assetDao = new AssetDao();

		// Check if user is defaulter
		boolean dontLend = overdueDao.checkIfOverdue(userId);
		if (dontLend) {
			session.setAttribute("isBanFinished", "false");
		}
		System.out.println("isBanFinished is set to false if user has pending");

		// Get List of assets to display (Excludes Categories he has already lended)
		ArrayList<Asset> assetsAvailable = assetDao.getLendableAssets(userId);

		System.out.println("Printing Assets for debugging (Not when request comes from borrowAssets.jsp");
		System.out.println(assetsAvailable);
		System.out.println("Printing Assets for debugging (Not when request comes from borrowAssets.jsp");

		// USE THIS ATTRIBUTE IN FRONTEND TO SHOW LIST OF AVAILABLE PRODUCTS TO BORROW
		session.setAttribute("assetsAvailable", assetsAvailable); // These Assets will be displayed to User

		// Redirect when request is not coming from borrowAssets.jsp
		if (assetIdToBorrow == null) {
			RequestDispatcher rd = request.getRequestDispatcher("borrowAssets.jsp");
			rd.forward(request, response);
		}

		System.out.println("User wants to lend :" + assetIdToBorrow);

		int assetId = Integer.parseInt(assetIdToBorrow);

		// Update Borrow Table
		boolean borrowTableUpdateStatus = false;
		try {
			borrowTableUpdateStatus = borrowDao.borrowAsset(userId, assetId);
		} catch (ParseException | SQLException e) {
			e.printStackTrace();
		}

		// Update the Asset Table to change IS_AVAILABLE of that asset to false
		boolean availableStatusChanged = assetDao.changeIsAvailableToFalse(assetId);
		System.out.println("Available Status of Borrowed Asset Changed :" + availableStatusChanged);

		System.out.println("Borrow Status :" + borrowTableUpdateStatus);
		if (borrowTableUpdateStatus) {
			RequestDispatcher rd = request.getRequestDispatcher("UserHomepage.jsp");
			rd.forward(request, response);
		}
	}

}
