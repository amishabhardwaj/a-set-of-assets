package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.hsbc.models.Authentication;
import com.hsbc.models.User;

public class AuthenticationDao {
	// UserBean user = new UserBean();
	Authentication user = new Authentication();

	/**
	 * 
	 * @param username
	 * @return userId
	 */
	public int getUserIdFromUsername(String username) {
		int userId = 0;
		String myQuery = "SELECT USERID FROM USERS WHERE USERNAME =?";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement prst = conn.prepareStatement(myQuery);
			prst.setString(1, username);
			ResultSet rs = prst.executeQuery();
			if (rs.next()) {
				userId = rs.getInt("USERID");
			}
			return userId;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userId;
	}

	/**
	 * 
	 * @param username
	 * @param password
	 * @return true if credentials are correct else false
	 */
	public boolean verifyCredentials(int userid, String password) {
		String myQuery = "SELECT * FROM AUTHENTICATION WHERE USERID=? AND PASSWORD=?";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement prst = conn.prepareStatement(myQuery);
			prst.setInt(1, userid);
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
	
	public String getRole(int userid) {
		String role = null;
		String roleQuery = "SELECT ROLE FROM AUTHENTICATION WHERE USERID=?";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement prst = conn.prepareStatement(roleQuery);
			prst.setInt(1, userid);
			ResultSet rs = prst.executeQuery();
			if(rs.next()) {
				role = rs.getString("ROLE");
			}
			return role;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return role;
	}

}
