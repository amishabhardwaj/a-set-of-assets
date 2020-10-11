package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.xml.ws.Response;

import com.hsbc.DBconnection.DBConnection;
import com.hsbc.pojo.AssetBean;
import com.hsbc.pojo.BorrowedAssetBean;

public class AssetDao {

	DBConnection connection = new DBConnection();
	Connection conn = connection.getConnection();

	public void addAsset(AssetBean asset) {
		//int count = 0;
		try {
			System.out.println(asset);
			PreparedStatement pstmt = conn.prepareStatement("Insert into Asset values (DEFAULT , ? , ? , ? , ? , ?)");
			// pstmt.setInt(1, asset.getAssetId());
			pstmt.setString(1, asset.getCategory());
			pstmt.setString(2, asset.getSubcategory());
			pstmt.setString(3, asset.getDescription());
			pstmt.setString(4, asset.getDateAdded().toString());
			pstmt.setBoolean(5, true);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//return count;
	}

	public void returnAsset(int transactionId, int assetId) {
		try {
			PreparedStatement pstmt = conn.prepareStatement("Select TransactionId from OverdueTransactions where TransactionId = ?");
			pstmt.setInt(1, transactionId);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
//				if (rs.getBoolean(2)) {
					PreparedStatement pstmt1 = conn.prepareStatement("Update OverdueTransactions " 
																	+ "SET Ban_Start_Date = ? , is_Fine_Paid = ?"
																	+ "where TransactionId = ?");
					pstmt1.setString(1, LocalDate.now().toString());
					pstmt1.setBoolean(2, true);
					pstmt1.setInt(3, transactionId);
					pstmt1.executeUpdate();
				}
//					else {
//					System.out.println("Fine not paid");
//					return;
//				}

				PreparedStatement pstmt2 = conn.prepareStatement("Update Borrow "
																+ "SET Return_Date = ? , Borrow_Status = ?"
																+ "where TransactionId = ?");
				pstmt2.setString(1, LocalDate.now().toString());
				pstmt2.setString(2, "Closed");
				pstmt2.setInt(3, transactionId);
				pstmt2.executeUpdate();
				
				PreparedStatement pstmt3 = conn.prepareStatement("Update Asset "
						+ "SET is_Available = ?"
						+ "where AssetId = ?");
				pstmt3.setBoolean(1, true);
				pstmt3.setInt(1, assetId);
			}

		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<BorrowedAssetBean> showBorrowedAssets(int userId)
	{
		List<BorrowedAssetBean> assets = new ArrayList<BorrowedAssetBean>();
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement("select TransactionId, UserId, AssetId, Issue_Date, Due_Date, Borrow_Status from Borrow where UserId = ?");
			pstmt.setInt(1, userId);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next())
			{
				assets.add(new BorrowedAssetBean(rs.getInt(1) , rs.getInt(2) , rs.getInt(3) , LocalDate.parse(rs.getDate(4).toString()) , LocalDate.parse(rs.getDate(5).toString()) , rs.getString(6)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return assets;
		
		
	}
}
