package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.hsbc.models.UserBean;

public class UserBeanDao {
	UserBean user = new UserBean();

	// ??
	public String getQuestion(String username) {
		String question = "";
		String myQuery = "SELECT QUESTION FROM USERS WHERE USERNAME =?";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement prst = conn.prepareStatement(myQuery);
			prst.setString(1, username);
			ResultSet rs = prst.executeQuery();
			if (rs.next()) {
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

	// ??
	public String getAnswer(String username) {
		String answer = "";
		String myQuery = "SELECT ANSWER FROM USERS WHERE USERNAME =?";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement prst = conn.prepareStatement(myQuery);
			prst.setString(1, username);
			ResultSet rs = prst.executeQuery();
			if (rs.next()) {
				answer = rs.getString("ANSWER");
			} else {
				return "User Not Found";
			}
			return answer;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return answer;
	}

	// ??
	public boolean changePassword(String username, String newPassword) {
		// Is this query correct?
		String myQuery = "UPDATE USERS SET PASSWORD=? WHERE USERNAME=?";

		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement prst = conn.prepareStatement(myQuery);
			prst.setString(1, newPassword);
			prst.setString(2, username);
			int rowsAffected = prst.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	// Working
	public boolean verifyCredentials(String username, String password) {
		String myQuery = "SELECT * FROM USERBEAN1 WHERE USERNAME=? AND PASSWORD=?";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement prst = conn.prepareStatement(myQuery);
			prst.setString(1, username);
			prst.setString(2, password);
			ResultSet rs = prst.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
