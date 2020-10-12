package com.hsbc.pojo;

import java.util.Date;

public class OverDueTransactions {

	private int transactionId;
	private Date banStartDate;
	private boolean isFinePaid;
	private boolean isBanFinished;
	private String message;

	public OverDueTransactions() {
	}

	public OverDueTransactions(int transactionId, Date banStartDate, boolean isFinePaid, boolean isBanFinished,
			String message) {
		super();
		this.transactionId = transactionId;
		this.banStartDate = banStartDate;
		this.isFinePaid = isFinePaid;
		this.isBanFinished = isBanFinished;
		this.message = message;
	}

	public int getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}

	public Date getBanStartDate() {
		return banStartDate;
	}

	public void setBanStartDate(Date banStartDate) {
		this.banStartDate = banStartDate;
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

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "OverDueTransactions [transactionId=" + transactionId + ", banStartDate=" + banStartDate
				+ ", isFinePaid=" + isFinePaid + ", isBanFinished=" + isBanFinished + ", message=" + message + "]";
	}

}