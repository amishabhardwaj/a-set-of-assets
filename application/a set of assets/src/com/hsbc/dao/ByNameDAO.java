package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hsbc.DBconnection.DBConnection;
import com.hsbc.pojo.*;

public class ByNameDAO {

	static Connection conn = null;

	public ByNameDAO() {
		conn = DBConnection.getConnection();
	}

	public List<OverdueName> selectUserByName(String username) throws SQLException {

		List<OverdueName> list = new ArrayList<OverdueName>();

		String sql = "select * from Borrow join OverDueTransactions on Borrow.transactionId = OverDueTransactions.transactionId join Users on Borrow.userId = Users.userId where username=?";
		
		PreparedStatement st = conn.prepareStatement(sql);
		st.setString(1, username);
		ResultSet rs = st.executeQuery();
		
		while (rs.next()) {
			list.add(new OverdueName(rs.getInt(1), rs.getInt(2),rs.getInt(3),rs.getDate(4),rs.getDate(5),rs.getDate(6),rs.getString(7),rs.getInt(8),rs.getDate(9), rs.getBoolean(10),rs.getBoolean(11),rs.getString(12),rs.getInt(13),rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17),rs.getDate(18),rs.getString(19),rs.getString(20) ));
		}
//		System.out.println("from dao "+list);
		return list;
	}
}