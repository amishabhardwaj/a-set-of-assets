package com.hsbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.hsbc.DBconnection.*;
import com.hsbc.pojo.User;

public class RegisterDao {
Connection conn=null;
	
	public RegisterDao() {
		conn= DBConnection.getConnection();
	}
	public int addDetails(User bean,String password) {
		//int userid = 0;
		int check=0,check1=0;
		try {    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
		        String query = "Select Username,Email from Users"; 
		        String query3 = "Select * from Users where Username=?";
		        PreparedStatement st=conn.prepareStatement(query3);
		        st.setString(1, bean.getUsername());
		        ResultSet r1=st.executeQuery();
		        
		        String query4 = "Select * from Users where Email=?";
		        PreparedStatement stm=conn.prepareStatement(query4);
		        stm.setString(1, bean.getEmail());
		        ResultSet r2=stm.executeQuery();
		        
		         ResultSet rs = stmt.executeQuery(query);
		      
		         while( rs.next() ) {
		        	

		        	 if(r1.next() && r2.next()) {
			        	 check1=1;
			        	 break;
			         }
		        	
		        	else if(rs.getString("Username").equals(bean.getUsername())){
		        		check1=2;
		        		break;
		        	}
		        	else if(rs.getString("Email").equals(bean.getEmail())) {
		        		check1=3;
		        		break;
		        	}
	
		         }
		       
		         if(check1 == 0) {
			    String sql= "insert into Users(Username,Name,Phone_Number,Email,Password,Role) values(?,?,?,?,?,?)";
			    PreparedStatement pstmt = conn.prepareStatement(sql);
			   // pstmt.setInt(1,userid);
			    pstmt.setString(1, bean.getUsername());
				pstmt.setString(2,bean.getName());
				pstmt.setString(3,bean.getPhoneNumber());
				pstmt.setString(4,bean.getEmail());
				pstmt.setString(5,bean.getPassword());
				pstmt.setString(6,bean.getRole());
				pstmt.executeUpdate();
				
		         }
				if(check1==1) {
					check=1;
				}
				else if(check1==2) {
					check=2;
				}
				else if(check1==3) {
					check=3;
				}
				
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return check;
	}
	

}
