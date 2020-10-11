package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.hsbc.DBconnection.DBConnection;
import com.hsbc.pojo.*;

public class OverdueAssetDAO {

	static Connection conn = null;

	public OverdueAssetDAO() {
		conn = DBConnection.getConnection();
	}

	public void selectUserByName(String name)throws SQLException {

		
		List<User> user = new ArrayList<>();
		Statement stmt2 = conn.createStatement();
		ResultSet rs2 = stmt2.executeQuery("select * from users");

		while (rs2.next()) {
			user.add(new User(rs2.getInt(1), rs2.getString(2), rs2.getString(3), rs2.getString(4), rs2.getString(5), rs2.getDate(6),
					rs2.getString(7), rs2.getString(8)));
		}
		System.out.println(user);
		
		
		List<Borrow> borrow = new ArrayList<>();
		Statement stmt1 = conn.createStatement();
		ResultSet rs1 = stmt1.executeQuery("select * from borrow");

		while (rs1.next()) {
			borrow.add(new Borrow(rs1.getInt(1), rs1.getInt(2), rs1.getInt(3), rs1.getDate(4), rs1.getDate(5), rs1.getDate(6),
					rs1.getString(7)));
		}
		System.out.println(borrow);
		

		
		List<OverDueTransactions> odt = new ArrayList<>();
		Statement stmt3 = conn.createStatement();
		ResultSet rs3 = stmt3.executeQuery("select * from users");

		while (rs3.next()) {
			odt.add(new OverDueTransactions(rs3.getInt(1), rs3.getDate(2), rs3.getBoolean(3), rs3.getBoolean(4), rs3.getString(5)));
		}
		System.out.println(odt);
		
		
		List<Asset> asset = new ArrayList<>();
		Statement stmt4 = conn.createStatement();
		ResultSet rs4 = stmt4.executeQuery("select * from borrow");

		while (rs4.next()) {
			asset.add(new Asset(rs1.getInt(1), rs1.getString(2), rs1.getString(3), rs1.getString(4), rs1.getDate(5), rs1.getBoolean(6)));
		}
		System.out.println(asset);
		
		
		
		
	}
}
//		List<OverDueAssetByName> elist = new ArrayList<>();
//		PreparedStatement ps1 = conn.prepareStatement("select user from users where id =?");
//		PreparedStatement ps2 = conn.prepareStatement(SELECT_USER_BY_NAME);
//		PreparedStatement ps3 = conn.prepareStatement(SELECT_USER_BY_NAME);
//			preparedStatement.setInt(1, id);
//			System.out.println(preparedStatement);
//			// Step 3: Execute the query or update query
//			ResultSet rs = preparedStatement.executeQuery();
//
//			// Step 4: Process the ResultSet object.
//			while (rs.next()) {
//				String name = rs.getString("name");
//				String email = rs.getString("email");
//				String country = rs.getString("country");
//				user = new User(id, name, email, country);
//			}
//		}catch(
//
//	SQLException e)
//	{
//		printSQLException(e);
//	}return user;
//	}
//
//	public User selectUserByDate(Date date) {
//		User user = null;
//		// Step 1: Establishing a Connection
//		try (Connection connection = getConnection();
//				// Step 2:Create a statement using connection object
//				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
//			preparedStatement.setInt(1, id);
//			System.out.println(preparedStatement);
//			// Step 3: Execute the query or update query
//			ResultSet rs = preparedStatement.executeQuery();
//
//			// Step 4: Process the ResultSet object.
//			while (rs.next()) {
//				String name = rs.getString("name");
//				String email = rs.getString("email");
//				String country = rs.getString("country");
//				user = new User(id, name, email, country);
//			}
//		} catch (SQLException e) {
//			printSQLException(e);
//		}
//		return user;
//	}
//
//	public User selectUserByCategory(String category) {
//		User user = null;
//		// Step 1: Establishing a Connection
//		try (Connection connection = getConnection();
//				// Step 2:Create a statement using connection object
//				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
//			preparedStatement.setInt(1, id);
//			System.out.println(preparedStatement);
//			// Step 3: Execute the query or update query
//			ResultSet rs = preparedStatement.executeQuery();
//
//			// Step 4: Process the ResultSet object.
//			while (rs.next()) {
//				String name = rs.getString("name");
//				String email = rs.getString("email");
//				String country = rs.getString("country");
//				user = new User(id, name, email, country);
//			}
//		} catch (SQLException e) {
//			printSQLException(e);
//		}
//		return user;
//	}
//}