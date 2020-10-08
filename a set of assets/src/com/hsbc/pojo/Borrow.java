package com.hsbc.pojo;

import java.util.Date;

enum bs {
	Open, Close, Pending
}

public class Borrow {

	private int transactionId;
	private int userId;
	private int assetId;
	private Date issueDate;
	private Date dueDate;
	private Date returnDate;
	private bs borrowStatus;

	public Borrow() {
	}

	public Borrow(int transactionId, int userId, int assetId, Date issueDate, Date dueDate, Date returnDate,
			bs borrowStatus) {
		super();
		this.transactionId = transactionId;
		this.userId = userId;
		this.assetId = assetId;
		this.issueDate = issueDate;
		this.dueDate = dueDate;
		this.returnDate = returnDate;
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

	public Date getIssueDate() {
		return issueDate;
	}

	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public Date getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}

	public bs getBorrowStatus() {
		return borrowStatus;
	}

	public void setBorrowStatus(bs borrowStatus) {
		this.borrowStatus = borrowStatus;
	}

	@Override
	public String toString() {
		return "Borrow [transactionId=" + transactionId + ", userId=" + userId + ", assetId=" + assetId + ", issueDate="
				+ issueDate + ", dueDate=" + dueDate + ", returnDate=" + returnDate + ", borrowStatus=" + borrowStatus
				+ "]";
	}

}