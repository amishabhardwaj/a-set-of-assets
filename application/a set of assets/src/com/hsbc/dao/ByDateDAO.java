package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.text.DateFormat;  
import java.text.SimpleDateFormat;   

import com.hsbc.DBconnection.DBConnection;
import com.hsbc.pojo.*;

public class ByDateDAO {

	static Connection conn = null;

	public ByDateDAO() {
		conn = DBConnection.getConnection();
	}

	public List<OverdueDate> selectUserByDate(Date date) throws SQLException {

		  
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");  
        String strDate = dateFormat.format(date);
         
         
		List<OverdueDate> list = new ArrayList<OverdueDate>();

		String sql = "select * from Borrow join OverDueTransactions on Borrow.Transactionid = OverDueTransactions.Transactionid  join Users on Borrow.Userid = Users.Userid where Issue_Date = ?";
		
		PreparedStatement st = conn.prepareStatement(sql);
		st.setString(1, strDate);
		ResultSet rs = st.executeQuery();
		
		while (rs.next()) {
			list.add(new OverdueDate(rs.getInt(1), rs.getInt(2),rs.getInt(3),rs.getDate(4),rs.getDate(5),rs.getDate(6),rs.getString(7),rs.getInt(8),rs.getDate(9), rs.getBoolean(10),rs.getBoolean(11),rs.getString(12),rs.getInt(13),rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17),rs.getDate(18),rs.getString(19),rs.getString(20) ));
		}
//		System.out.println("from dao "+list);
		return list;
	}
}