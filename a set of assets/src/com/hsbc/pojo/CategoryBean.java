package com.hsbc.pojo;

public class CategoryBean {

	private String name;
	private int lendingPeriod;
	private int fine;
	private int banPeriod;
	
	public CategoryBean() {}

	public CategoryBean(String name, int lendingPeriod, int fine, int banPeriod) {
		super();
		this.name = name;
		this.lendingPeriod = lendingPeriod;
		this.fine = fine;
		this.banPeriod = banPeriod;
	}
	
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
	@Override
	public String toString() {
		return "CategoryBean [name=" + name + ", lendingPeriod=" + lendingPeriod + ", fine=" + fine + ", banPeriod="
				+ banPeriod + "]";
	}
	
	
	
}
