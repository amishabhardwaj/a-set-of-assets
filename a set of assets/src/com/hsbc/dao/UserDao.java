package com.hsbc.dao;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;
import java.sql.PreparedStatement;

import com.hsbc.DBconnection.*;
import com.hsbc.pojo.User;

public class UserDao {
	User user = new User();

	public boolean verifyCredentials(String username, String password) {
		String myQuery = "SELECT * FROM USERS WHERE USERNAME=? AND PASSWORD=?";
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

	public User fetchUserDetails(String username) {
		String fetchUserDetails = "SELECT * FROM USERS WHERE USERNAME=?";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement prst = conn.prepareStatement(fetchUserDetails);
			prst.setString(1, username);
			//Statement st = conn.createStatement();
			ResultSet rs = prst.executeQuery();
			User currentUser = new User();
			while (rs.next()) {
				currentUser.setUserId(rs.getInt("USERID"));
				currentUser.setUserName(rs.getString("USERNAME"));
				currentUser.setName(rs.getString("NAME"));
				currentUser.setPassword(rs.getString("PASSWORD"));
				currentUser.setRole(rs.getString("ROLE"));
				currentUser.setPhoneNumber(rs.getString("PHONE_NUMBER"));
				currentUser.setEmail(rs.getString("EMAIL"));
				currentUser.setLastLoginTime(rs.getDate("LAST_LOGIN_TIME"));
			}
			System.out.println(currentUser);
			return currentUser;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean updateLastLogin(String username) {
		String updateLoginDate = "UPDATE USERS SET LAST_LOGIN_TIME=? WHERE USERNAME="+username;
		Connection conn = DBConnection.getConnection();

		long time = System.currentTimeMillis();
		java.sql.Timestamp timestamp = new java.sql.Timestamp(time);

		try {
			PreparedStatement prst = conn.prepareStatement(updateLoginDate);
			prst.setTimestamp(1, timestamp);
			ResultSet rs = prst.executeQuery();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

		public String getRole(String username) {
		String role = null;
		String roleQuery = "SELECT ROLE FROM USERS WHERE USERNAME=?";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement prst = conn.prepareStatement(roleQuery);
			prst.setString(1, username);
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