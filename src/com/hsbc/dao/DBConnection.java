package com.hsbc.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {
	static Connection conn = null;
	static Statement stmt = null;

	public static Connection getConnection() {
		try {
			DriverManager.registerDriver(new org.apache.derby.jdbc.ClientDriver());
			conn = DriverManager.getConnection("jdbc:derby://localhost:1527/loginDB");
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return conn;
	}

	public static void closeConnection() {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
