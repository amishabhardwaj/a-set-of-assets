package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import com.hsbc.DBconnection.*;
import com.hsbc.pojo.AssetK;

public class AssetKDao {
	AssetK assetBean = new AssetK();

	/**
	 * 
	 * @param userId
	 * @return List of Assets which user is allowed to lend now
	 * 
	 *         This function hits Borrow and Category Table too
	 */
	public ArrayList<AssetK> getLendableAssets(int userId) {
		ArrayList<AssetK> assetList = new ArrayList<AssetK>();
		// First select what has has this user already issued
		// String fetchAssetId = "SELECT ASSETID FROM BORROW WHERE USERID=?"; // Not
		// used if fetchCategoryOfIssued Query works

		// This query will fetch all CATEGORIES which the user has already borrowed and
		// not returned
		String fetchCategoryOfIssued = "SELECT CATEGORY_NAME FROM ASSET WHERE ASSETID IN(SELECT ASSETID FROM BORROW WHERE USERID=? AND BORROW_STATUS='OPEN')";

		// This query will fetch all CATEGORIES available in the system
		// String fetchAllCategories = "SELECT CATEGORY_NAME FROM CATEGORY";

		// Fetch all assets which are available to borrow
		String fetchAllAssets = "SELECT * FROM ASSET WHERE IS_AVAILABLE=TRUE";

		Connection conn = DBConnection.getConnection();
		try {
			// Fetch Categories of assets which user has issued but not returned
			HashSet<String> categoriesAlreadyHeld = new HashSet<String>();
			PreparedStatement prst2 = conn.prepareStatement(fetchCategoryOfIssued, ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_UPDATABLE);
			prst2.setInt(1, userId);
			ResultSet rs2 = prst2.executeQuery();
			// Add held categories to HashSet
			while (rs2.next()) {
				categoriesAlreadyHeld.add(rs2.getString("CATEGORY_NAME"));
			}

			// Fetch entire Asset Table
			PreparedStatement prst3 = conn.prepareStatement(fetchAllAssets, ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_UPDATABLE);
			ResultSet rs4 = prst3.executeQuery();

			// Delete all assets of categories which user has already hired
			while (rs4.next()) {
				String currentCategory = rs4.getString("CATEGORY_NAME");
				if (categoriesAlreadyHeld.contains(currentCategory)) {
					rs4.deleteRow();
				}
			}
			
			// Console Log for Debugging
			rs4.beforeFirst();
			while(rs4.next()) {
				System.out.println(rs4.getInt("ASSETID"));
				System.out.println(rs4.getString("CATEGORY_NAME"));
				System.out.println(rs4.getString("SUBCATEGORY"));
				System.out.println(rs4.getString("FEATURE_DESCRIPTION"));
				System.out.println(rs4.getDate("DATE_ADDED"));
				System.out.println(rs4.getBoolean("IS_AVAILABLE"));
			}
			
			// Make ArrayList<Asset> of remaining Assets
			rs4.first();
			do {
				AssetK ab = new AssetK();
				ab.setAssetId(rs4.getInt("ASSETID"));
				ab.setCategory(rs4.getString("CATEGORY_NAME"));
				ab.setSubcategory(rs4.getString("SUBCATEGORY"));
				ab.setFeatureDescription(rs4.getString("FEATURE_DESCRIPTION"));
				ab.setDateAdded(rs4.getDate("DATE_ADDED"));
				ab.setIsAvailable(rs4.getBoolean("IS_AVAILABLE"));
				assetList.add(ab);
			} while (rs4.next());
			
			for(AssetK a : assetList) {
				System.out.println("************************8*");
				System.out.println(a.getAssetId());
				System.out.println(a.getCategory());
				System.out.println(a.getSubcategory());
				System.out.println(a.getFeatureDescription());
				System.out.println(a.getDateAdded());
				System.out.println(a.getIsAvailable());
			}
			
			return assetList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return assetList;
	}

	public boolean changeIsAvailableToFalse(int assetId) {
		String changeIsAvailable = "UPDATE ASSET SET IS_AVAILABLE=FALSE WHERE ASSETID=?";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement prst = conn.prepareStatement(changeIsAvailable, ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_UPDATABLE);
			prst.setInt(1, assetId);
			int rowsChanged = prst.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
