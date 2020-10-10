package com.hsbc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;
import java.sql.PreparedStatement;

import com.hsbc.models.User;

public class UserDao {
	User user = new User();
	
	public User fetchUserDetails(int userid) {
		String fetchUserDetails = "SELECT * FROM USERS";
		Connection conn = DBConnection.getConnection();
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(fetchUserDetails);
			User currentUser = new User();
			while(rs.next()) {
				currentUser.setUserId(rs.getInt("USERID"));
				currentUser.setUserName(rs.getString("USERNAME"));
				currentUser.setName(rs.getString("NAME"));
				currentUser.setPhoneNumber(rs.getString("PHONENUMBER"));
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
}
