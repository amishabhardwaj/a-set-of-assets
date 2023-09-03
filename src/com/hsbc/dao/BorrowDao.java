package com.hsbc.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;

public class BorrowDao {
	/**
	 * 
	 * @param userId
	 * @param assetIdToBorrow
	 * @return true if BORROW table updated successfully, Else false
	 * @throws ParseException
	 * @throws SQLException
	 */
	public boolean borrowAsset(int userId, int assetIdToBorrow) throws ParseException, SQLException {
		String insertInBorrow = "INSERT INTO BORROW (USERID,ASSETID,ISSUE_DATE,DUE_DATE,BORROW_STATUS) VALUES(?,?,?,?,?)";
		String getBorrowPeriod = "SELECT LENDING_PERIOD FROM CATEGORY WHERE CATEGORY_NAME=?";
		String getCategory  = "SELECT CATEGORY_NAME FROM ASSET WHERE ASSETID=?";
		String categoryName = null; // Fetching this value from CATEGORY table
		int lendingPeriod = 0; // Fetching this value from CATEGORY Table
		Connection conn = DBConnection.getConnection();
		
		// Get Category of asset demanded 
		PreparedStatement prst1 = conn.prepareStatement(getCategory);
		prst1.setInt(1,assetIdToBorrow);
		ResultSet rs1 = prst1.executeQuery();
		if(rs1.next()) {
			categoryName = rs1.getString("CATEGORY_NAME");
		}
		
		// Get Lending Period to compute Due Date
		PreparedStatement prst2 = conn.prepareStatement(getBorrowPeriod);
		prst2.setString(1, categoryName);
		ResultSet rs2 = prst2.executeQuery();
		if(rs2.next()) {
			lendingPeriod = rs2.getInt("LENDING_PERIOD");
		}
		
		// Fetch Current Date from system to add to Table
		Date currentDate = new Date(System.currentTimeMillis());
		
		// Add lendingPeriod to currentDate to get dueDate
		LocalDate dueDateOtherFormat = LocalDate.now().plusDays(lendingPeriod);
		Date dueDate = java.sql.Date.valueOf(dueDateOtherFormat);
		
		// Now update the BORROW Table
		try {
			PreparedStatement prst = conn.prepareStatement(insertInBorrow);
			prst.setInt(1, userId);
			prst.setInt(2, assetIdToBorrow);
			
			prst.setDate(3,currentDate);
			prst.setDate(4,dueDate);
			prst.setString(5,"OPEN");
			
			int rowsUpdated = prst.executeUpdate();
			
			if(rowsUpdated != 0) {
				return true;
			} else return false;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
