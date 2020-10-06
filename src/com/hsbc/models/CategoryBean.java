package com.hsbc.models;

public class CategoryBean {
	String name;
	int lendingPeriod;
	int fine;
	int banPeriod;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getLendingPeriod() {
		return lendingPeriod;
	}

	public void setLendingPeriod(int lendingPeriod) {
		this.lendingPeriod = lendingPeriod;
	}

	public int getFine() {
		return fine;
	}

	public void setFine(int fine) {
		this.fine = fine;
	}

	public int getBanPeriod() {
		return banPeriod;
	}

	public void setBanPeriod(int banPeriod) {
		this.banPeriod = banPeriod;
	}
}
