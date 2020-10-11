package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hsbc.DBconnection.DBConnection;

public class DisplayMessageDAO {

	static Connection conn = null;

	public DisplayMessageDAO() {
		conn = DBConnection.getConnection();
	}

	public List<String> displayMessage(String username, String password) throws SQLException {

		List<String> list = new ArrayList<>();

		String sql = "select Message from OverdueTransactions where TransactionId = (select Borrow.TransactionId from Borrow join Users on Borrow.UserId = Users.UserId join OverdueTransactions on Borrow.TransactionId = OverdueTransactions.TransactionId where Username=? and password=?)";
		PreparedStatement st = conn.prepareStatement(sql);
		st.setString(1, username);
		st.setString(2, password);

		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			list.add(rs.getString(1));
		}
		System.out.println("from dao " + list);
		return list;
	}

}
