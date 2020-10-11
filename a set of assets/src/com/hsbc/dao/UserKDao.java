package com.hsbc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;
import java.sql.PreparedStatement;

import com.hsbc.pojo.User;
import com.hsbc.DBconnection.*;

public class UserKDao {
	User user = new User();

	public boolean verifyCredentials(int userid, String password) {
		String myQuery = "SELECT * FROM USERS WHERE USERID=? AND PASSWORD=?";
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

	public User fetchUserDetails(int userid) {
		String fetchUserDetails = "SELECT * FROM USERS";
		Connection conn = DBConnection.getConnection();
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(fetchUserDetails);
			User currentUser = new User();
			while (rs.next()) {
				currentUser.setUserId(rs.getInt("USERID"));
				currentUser.setUserName(rs.getString("USERNAME"));
				currentUser.setName(rs.getString("NAME"));
				currentUser.setPhoneNumber(rs.getString("PHONE_NUMBER"));
				currentUser.setEmail(rs.getString("EMAIL"));
				currentUser.setLastLoginTime(rs.getDate("LAST_LOGIN_TIME"));
			}
			return currentUser;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean updateLastLogin(int userid) {
		String updateLoginDate = "UPDATE USERS SET LAST_LOGIN_TIME=?";
		Connection conn = DBConnection.getConnection();

		long time = System.currentTimeMillis();
		java.sql.Timestamp timestamp = new java.sql.Timestamp(time);

		try {
			PreparedStatement prst = conn.prepareStatement(updateLoginDate);
			prst.setTimestamp(1, timestamp);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

		public String getRole(int userid) {
		String role = null;
		String roleQuery = "SELECT ROLE FROM USERS WHERE USERID=?";
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
