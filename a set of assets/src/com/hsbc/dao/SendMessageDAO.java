package com.hsbc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.hsbc.DBconnection.DBConnection;
import com.hsbc.pojo.OverDueTransactions;
import com.hsbc.pojo.OverdueDate;

public class SendMessageDAO {

	static Connection conn = null;

	public SendMessageDAO() {
		conn = DBConnection.getConnection();
	}

	public List<String> sendMessage(String username, String message) throws SQLException {

		List<String> list = new ArrayList<>();

		String sql = "update OverDueTransactions set Message = ? where TransactionId = (select Borrow.TransactionId from Borrow join Users on Borrow.UserId = Users.UserId join OverdueTransactions on Borrow.TransactionId = OverdueTransactions.TransactionId where Username=?)";
		PreparedStatement st = conn.prepareStatement(sql);
		st.setString(1, message);
		st.setString(2, username);

		int f = st.executeUpdate();
		if (f > 0) {
			list.add("Hey! Your message sent successfully to the specified user.");
		} else {
			list.add("Oops sorry! Failed to send message to the specified user.");
		}
//		System.out.println("from dao "+list);
		return list;
	}

}
