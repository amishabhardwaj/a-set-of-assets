package com.hsbc.models;

public class Category {

	private String categoryName;
	private int lendingPeriod;
	private int banPeriod;
	private int finePerDay;

	public Category() {
	}

	public Category(String categoryName, int lendingPeriod, int banPeriod, int finePerDay) {
		super();
		this.categoryName = categoryName;
		this.lendingPeriod = lendingPeriod;
		this.banPeriod = banPeriod;
		this.finePerDay = finePerDay;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public int getLendingPeriod() {
		return lendingPeriod;
	}

	public void setLendingPeriod(int lendingPeriod) {
		this.lendingPeriod = lendingPeriod;
	}

	public int getBanPeriod() {
		return banPeriod;
	}

	public void setBanPeriod(int banPeriod) {
		this.banPeriod = banPeriod;
	}

	public int getFinePerDay() {
		return finePerDay;
	}

	public void setFinePerDay(int finePerDay) {
		this.finePerDay = finePerDay;
	}

	@Override
	public String toString() {
		return "Category [categoryName=" + categoryName + ", lendingPeriod=" + lendingPeriod + ", banPeriod="
				+ banPeriod + ", finePerDay=" + finePerDay + "]";
	}

}
