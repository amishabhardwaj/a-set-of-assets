package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import com.hsbc.pojo.Overdue;

import com.hsbc.DBconnection.*;

public class OverdueDao {
	Overdue overdue = new Overdue();

	/**
	 * 
	 * @param userId
	 * @return true if defaulter, false if not
	 */
	public boolean checkIfOverdue(int userId) {
		Connection conn = DBConnection.getConnection();
		// Error in this Query
		String myQuery = "SELECT * FROM OVERDUETRANSACTIONS WHERE TRANSACTIONID IN (SELECT TRANSACTIONID FROM BORROW WHERE USERID=?) AND IS_BAN_FINISHED=FALSE";
		PreparedStatement prst;
		try {
			prst = conn.prepareStatement(myQuery);
			prst.setInt(1, userId);
			ResultSet rs = prst.executeQuery();
			if(rs.next()) {
				return true;
			}
			return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	/*
	 * public boolean checkIfOverdue(int userId) { Connection conn =
	 * DBConnection.getConnection(); // Error in this Query String myQuery =
	 * "SELECT * FROM OVERDUETRANSACTIONS WHERE USERID=? AND IS_BAN_FINISHED=FALSE";
	 * PreparedStatement prst; try { prst = conn.prepareStatement(myQuery);
	 * prst.setInt(1, userId); ResultSet rs = prst.executeQuery(); if(rs.next()) {
	 * return true; } return false; } catch (SQLException e) { // TODO
	 * Auto-generated catch block e.printStackTrace(); } return false; }
	 */
}
