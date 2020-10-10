package com.hsbc.pojo;

import java.util.Date;

public class OverDueAssetByName {

	private String name;
	private String phone;
	private String email;
	private Date lastLoginTime;
	private String category;
	private String subcategory;
	private Date issueDate;
	private Date dueDate;
	private Date returnDate;
	private String borrowStatus;

	public OverDueAssetByName(String name, String phone, String email, Date lastLoginTime, String category,
			String subcategory, Date issueDate, Date dueDate, Date returnDate, String borrowStatus) {
		super();
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.lastLoginTime = lastLoginTime;
		this.category = category;
		this.subcategory = subcategory;
		this.issueDate = issueDate;
		this.dueDate = dueDate;
		this.returnDate = returnDate;
		this.borrowStatus = borrowStatus;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSubcategory() {
		return subcategory;
	}

	public void setSubcategory(String subcategory) {
		this.subcategory = subcategory;
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

	public String getBorrowStatus() {
		return borrowStatus;
	}

	public void setBorrowStatus(String borrowStatus) {
		this.borrowStatus = borrowStatus;
	}

	@Override
	public String toString() {
		return "OverDueAssetByName [name=" + name + ", phone=" + phone + ", email=" + email + ", lastLoginTime="
				+ lastLoginTime + ", category=" + category + ", subcategory=" + subcategory + ", issueDate=" + issueDate
				+ ", dueDate=" + dueDate + ", returnDate=" + returnDate + ", borrowStatus=" + borrowStatus + "]";
	}
}
