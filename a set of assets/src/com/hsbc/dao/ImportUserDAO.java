package com.hsbc.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.hsbc.DBconnection.DBConnection;

public class ImportUserDAO {

	public static void main(String args[]) {

		Connection conn = null;
		try {
			DriverManager.registerDriver(new org.apache.derby.jdbc.ClientDriver());

			conn = DriverManager.getConnection("jdbc:derby://localhost:1527/TestABDB");
			System.out.println("Connection established.");

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

		String query = "insert into Users(Username,Name,Phone_Number,Email,Last_Login_Time,Password,Role) values(?, ?, ?, ?, ?, ?, ? )";

		JSONParser jsonParser = new JSONParser();
		try {
			JSONObject jsonObject = (JSONObject) jsonParser
					.parse(new FileReader("D:/HSBC/WS1/a set of assets/src/practise/new_users.json"));

			JSONArray jsonArray = (JSONArray) jsonObject.get("new_users");
//			System.out.println(jsonArray);

			PreparedStatement pstmt = conn.prepareStatement(query);
			for (Object object : jsonArray) {
				JSONObject record = (JSONObject) object;

				String userName = (String) record.get("Username");
				String name = (String) record.get("Name");
				String phoneNumber = (String) record.get("Phone_Number");
				String email = (String) record.get("Email");
				String lastLoginTime = (String) record.get("Last_Login_Time");
				String password = (String) record.get("Password");
				String role = (String) record.get("Role");

				pstmt.setString(1, userName);
				pstmt.setString(2, name);
				pstmt.setString(3, phoneNumber);
				pstmt.setString(4, email);
				pstmt.setString(5, lastLoginTime);
				pstmt.setString(6, password);
				pstmt.setString(7, role);

				pstmt.executeUpdate();
			}
			System.out.println("Records inserted.....");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}