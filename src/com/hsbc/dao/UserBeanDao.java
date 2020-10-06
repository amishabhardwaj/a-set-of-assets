package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.hsbc.models.UserBean;

public class UserBeanDao {
	UserBean user = new UserBean();
	
	public String getQuestion(String username) {
		String question = "";
		String myQuery = "SELECT QUESTION FROM USERBEAN1 WHERE USERNAME =?";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement prst = conn.prepareStatement(myQuery);
			prst.setString(1,username);
			ResultSet rs = prst.executeQuery();
			if(rs.next()) {
				question = rs.getString("QUESTION");
			} else {
				return "User Not Found";
			}
			return question;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return question;
	}
	
	public boolean verifyCredentials(String username, String password) {
		String myQuery = "SELECT * FROM USERBEAN1 WHERE USERNAME=? AND PASSWORD=?";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement prst = conn.prepareStatement(myQuery);
			prst.setString(1,username);
			prst.setString(2,password);
			ResultSet rs = prst.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean addNewUser() {
		// Add to Database
		return false;
	}
	
	public UserBean getExistingUser() {
		// Fetch from Database
		return null;
	}
	
	public boolean deleteUser() {
		// Delete from Database
		return false;	
	}
}
