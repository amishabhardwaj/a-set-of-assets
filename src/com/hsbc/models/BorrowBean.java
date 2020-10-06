package com.hsbc.models;

import java.time.LocalDate;

public class BorrowBean {
	int transactionId;
	int userId;
	int assetId;
	LocalDate issueDate;
	LocalDate dueDate;
	LocalDate returnDate;
	BorrowStatus borrowStatus;

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

	public LocalDate getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(LocalDate returnDate) {
		this.returnDate = returnDate;
	}

	public BorrowStatus getBorrowStatus() {
		return borrowStatus;
	}

	public void setBorrowStatus(BorrowStatus borrowStatus) {
		this.borrowStatus = borrowStatus;
	}
}
