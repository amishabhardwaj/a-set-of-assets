package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;

import com.hsbc.models.Asset;

public class AssetDao {
	Asset assetBean = new Asset();
	
	/**
	 * 
	 * @param userId
	 * @return List of Assets which user is allowed to lend now
	 * 
	 * This function hits Borrow and Category Table too
	 */
	public ArrayList<Asset> getLendableAssets(int userId) {
		// First select what has has this user already issued
		// String fetchAssetId = "SELECT ASSETID FROM BORROW WHERE USERID=?"; // Not used if fetchCategoryOfIssued Query works
		
		// This query will fetch all CATEGORIES which the user has already borrowed and not returned
		String fetchCategoryOfIssued = "SELECT CATEGORY_NAME FROM ASSET IN (SELECT ASSETID FROM BORROW WHERE USERID=? AND BORROWSTATUS='OPEN')";
		
		// This query will fetch all CATEGORIES available in the system
		// String fetchAllCategories = "SELECT CATEGORY_NAME FROM CATEGORY";
		
		// Fetch all assets which are available to borrow
		String fetchAllAssets = "SELECT * FROM ASSET WHERE IS_AVAILABLE=TRUE";
		
		Connection conn = DBConnection.getConnection();
		try {
			// Fetch Categories of assets which user has issued but not returned
			HashSet<String> categoriesAlreadyHeld = new HashSet<>();
			PreparedStatement prst2 = conn.prepareStatement(fetchCategoryOfIssued);
			ResultSet rs2 = prst2.executeQuery();
			while(rs2.next()) {
				categoriesAlreadyHeld.add(rs2.getString("CATEGORY_NAME"));
			}
			
			// Fetch entire Asset Table
			PreparedStatement prst3 = conn.prepareStatement(fetchAllAssets);
			ResultSet rs4 = prst3.executeQuery();
			
			// Delete all assets of categories which user has already hired
			while(rs4.next()) {
				String currentCategory = rs4.getString("CATEGORY_NAME");
				if(categoriesAlreadyHeld.contains(currentCategory)) {
					rs4.deleteRow();
				}
			}
			
			// Now fetch all assets of canBorrow category and return
			ArrayList<Asset> assetList = new ArrayList<>();
			rs4.first();
			do {
				Asset ab = new Asset();
				ab.setAssetId(rs4.getInt("ASSETID"));
				ab.setCategory(rs4.getString("CATEGORY_NAME"));
				ab.setSubcategory(rs4.getString("SUBCATEGORY"));
				ab.setFeatureDescription(rs4.getString("FEATURE_DESCRIPTION"));
				ab.setDateAdded(rs4.getDate("DATE_ADDED"));
				ab.setAvailable(rs4.getBoolean("IS_AVAILABLE"));
				assetList.add(ab);
			}while(rs4.next());
			
			return assetList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
