package com.hsbc.models;

import java.time.LocalDate;

public class OverdueTransactions {
	int transactionId;
	LocalDate banStartDate;
	boolean isFinePaid;
	boolean isBanFinished;

	public int getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}

	public LocalDate getBanStartDate() {
		return banStartDate;
	}

	public void setBanStartDate(LocalDate banStartDate) {
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
}
