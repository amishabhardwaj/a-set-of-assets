package com.hsbc.pojo;

public class Overdue {
	int transactionId;
	int userId;
	boolean isFinePaid;
	boolean isBanFinished;

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

	public boolean isFinePaid() {
		return isFinePaid;
	}

	public void setFinePaid(boolean isFinePaid) {
		this.isFinePaid = isFinePaid;
	}

	public boolean isBanFinished() {
		return isBanFinished;
	}

	public void setBanFinished(boolean isBanFinished) {
		this.isBanFinished = isBanFinished;
	}

}
