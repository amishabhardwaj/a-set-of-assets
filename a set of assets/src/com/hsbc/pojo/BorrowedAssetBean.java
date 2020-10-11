package com.hsbc.pojo;

import java.time.LocalDate;

public class BorrowedAssetBean {
	
	int transactionId;
	int userId;
	int assetId;
	LocalDate issueDate;
	LocalDate dueDate;
	String borrowStatus;
	

	public BorrowedAssetBean() {}


	public BorrowedAssetBean(int transactionId, int userId, int assetId, LocalDate issueDate, LocalDate dueDate,
			String borrowStatus) {
		super();
		this.transactionId = transactionId;
		this.userId = userId;
		this.assetId = assetId;
		this.issueDate = issueDate;
		this.dueDate = dueDate;
		this.borrowStatus = borrowStatus;
	}


	public int getTransactionId() {
		return transactionId;
	}


	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}


	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}


	public int getAssetId() {
		return assetId;
	}


	public void setAssetId(int assetId) {
		this.assetId = assetId;
	}


	public LocalDate getIssueDate() {
		return issueDate;
	}


	public void setIssueDate(LocalDate issueDate) {
		this.issueDate = issueDate;
	}


	public LocalDate getDueDate() {
		return dueDate;
	}


	public void setDueDate(LocalDate dueDate) {
		this.dueDate = dueDate;
	}


	public String getBorrowStatus() {
		return borrowStatus;
	}


	public void setBorrowStatus(String borrowStatus) {
		this.borrowStatus = borrowStatus;
	}


	@Override
	public String toString() {
		return "BorrowedAssetBean [transactionId=" + transactionId + ", userId=" + userId + ", assetId=" + assetId
				+ ", issueDate=" + issueDate + ", dueDate=" + dueDate + ", borrowStatus=" + borrowStatus + "]";
	}
	
	
	

}
