package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hsbc.DBconnection.DBConnection;
import com.hsbc.pojo.OverdueCategory;

public class ByCategoryDAO {
	static Connection conn = null;

	public ByCategoryDAO() {
		conn = DBConnection.getConnection();
	}

	public List<OverdueCategory> selectUserByCategory(String category) throws SQLException {

		List<OverdueCategory> list = new ArrayList<>();

		String sql = "select * from Borrow join OverDueTransactions on Borrow.Transactionid = OverDueTransactions.Transactionid join Asset on Borrow.Assetid = Asset.Assetid join Users on Borrow.Userid = Users.Userid where Category_Name=?";

		PreparedStatement st = conn.prepareStatement(sql);
		st.setString(1, category);
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			list.add(new OverdueCategory(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getDate(4), rs.getDate(5),
					rs.getDate(6), rs.getString(7), rs.getInt(8), rs.getDate(9), rs.getBoolean(10), rs.getBoolean(11),
					rs.getString(12), rs.getInt(13), rs.getString(14), rs.getString(15), rs.getString(16),
					rs.getDate(17), rs.getBoolean(18), rs.getInt(19), rs.getString(20), rs.getString(21),
					rs.getString(22), rs.getString(23), rs.getDate(24), rs.getString(24), rs.getString(26)));
		}
//		System.out.println("from dao " + list);
		return list;
	}
}
