package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hsbc.DBconnection.DBConnection;
import com.hsbc.pojo.AssetBean;
import com.hsbc.pojo.CategoryBean;

public class CategoryDao {

	DBConnection connection = new DBConnection();
	Connection conn = connection.getConnection();

	public List<String> showCategories() {
		List<String> categories = new ArrayList<String>();

		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement("select Category_Name from category");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				categories.add(rs.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return categories;

	}

	public void addCategory(CategoryBean category) {
		try {
			System.out.println(category);
			PreparedStatement pstmt = conn.prepareStatement("Insert into Category values (? , ? , ? , ? )");
			pstmt.setString(1, category.getName());
			pstmt.setInt(2, category.getLendingPeriod());
			pstmt.setInt(3, category.getFine());
			pstmt.setInt(4, category.getBanPeriod());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
