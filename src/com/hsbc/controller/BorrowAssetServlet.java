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



/**
 * @author Kshitij
 *
 */
public class BorrowAssetServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("aaaaaaaaaaaaa");
		// Check if user is logged in
		HttpSession session = request.getSession();
		if(session.getAttribute("userid")==null) {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		System.out.println("bbbbbbbbbbb");
		// Above lines confirmed user's login, Now fetch his username
		int userId = (int) session.getAttribute("userid");
		
		AuthenticationDao authDao = new AuthenticationDao();
		BorrowDao borrowDao = new BorrowDao();
		OverdueDao overdueDao = new OverdueDao();
		AssetDao assetDao = new AssetDao();
		System.out.println("ccccccccccc");
		// No need as we are logging in using userid
		// Get userId from username
		// int userId = authDao.getUserIdFromUsername(username);
		
		// Check if user is defaulter
		boolean dontLend = overdueDao.checkIfOverdue(userId);
		if(dontLend) {
			// Use this Variable in JSP to tell user he cant borrow
			// If isBanFinished is FALSE then dont show him Assets
			session.setAttribute("isBanFinished","false");
		}
		System.out.println("dddddddddddddd");
		// Get List of assets to display (Excludes Categories he has already lended)
		ArrayList<Asset> assetsAvailable = assetDao.getLendableAssets(userId); 
		
		System.out.println("5555555555555555555555555555555555555555555");
		System.out.println(assetsAvailable);
		System.out.println("5555555555555555555555555555555555555555555");
		
		// USE THIS ATTRIBUTE IN FRONTEND TO SHOW LIST OF AVAILABLE PRODUCTS TO BORROW
		session.setAttribute("assetsAvailable",assetsAvailable); // These Assets will be displayed to User
		
		RequestDispatcher rd = request.getRequestDispatcher("borrowAssets.jsp");
		rd.forward(request,response);
		// User will send his selections from HTML Form, Accept details from form
		
		// User can lend only one item at a time, Data being sent by HTML Form
		int assetIdToBorrow = Integer.parseInt(request.getParameter("assetIdToBorrow"));
		
		// Update Borrow Table
		boolean borrowTableUpdateStatus=false;
		try {
			borrowTableUpdateStatus = borrowDao.borrowAsset(userId,assetIdToBorrow);
		} catch (ParseException | SQLException e) {
			e.printStackTrace();
		}
		
		// Update the Asset Table to change IS_AVAILABLE of that asset to false
		boolean availableStatusChanged = assetDao.changeIsAvailableToFalse(assetIdToBorrow);
		
		// Show user a message that his borrow is successful in frontend based on this session attribute
		// Change the Scope of this variable to something lesser if you want the user to borrow more than one assets in single login session
		if(borrowTableUpdateStatus) {
			session.setAttribute("borrowSuccessful","yes");
		} else {
			session.setAttribute("borrowSuccessful","no");
		}
	}
	
	// Overview 
	// Confirm that user is logged in - Done
	// Fetch all 'overdue' transactions of user and check status of isBanFinished - Done
	// Fetch all 'borrow' transactions of user where status is 'OPEN'  to ascertain which category they cant borrow - Done
	// Fetch the list of lendable assets and send to JSP - Done 
	// Fetch user's required asset and update BORROW Table - Done (BUT UPDATE ACCORDING TO FRONTEND)
}
