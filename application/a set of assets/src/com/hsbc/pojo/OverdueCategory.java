package com.hsbc.pojo;

import java.util.Date;

public class OverdueCategory {

	private int transactionId1;
	private int userId1;
	private int assetId1;
	private Date issueDate;
	private Date dueDate;
	private Date returnDate;
	private String borrowStatus;
	private int transactionId2;
	private Date banStartDate;
	private boolean isFinePaid;
	private boolean isBanFinished;
	private String message;
	private int assetId2;
	private String category;
	private String subcategory;
	private String featureDescription;
	private Date dateAdded;
	private boolean isAvailable;
	private int userId2;
	private String username;
	private String name;
	private String phone;
	private String email;
	private Date lastLogin;
	private String password;
	private String role;

	public OverdueCategory() {
	}

	public OverdueCategory(int transactionId1, int userId1, int assetId1, Date issueDate, Date dueDate, Date returnDate,
			String borrowStatus, int transactionId2, Date banStartDate, boolean isFinePaid, boolean isBanFinished,
			String message, int assetId2, String category, String subcategory, String featureDescription,
			Date dateAdded, boolean isAvailable, int userId2, String username, String name, String phone, String email,
			Date lastLogin, String password, String role) {
		super();
		this.transactionId1 = transactionId1;
		this.userId1 = userId1;
		this.assetId1 = assetId1;
		this.issueDate = issueDate;
		this.dueDate = dueDate;
		this.returnDate = returnDate;
		this.borrowStatus = borrowStatus;
		this.transactionId2 = transactionId2;
		this.banStartDate = banStartDate;
		this.isFinePaid = isFinePaid;
		this.isBanFinished = isBanFinished;
		this.message = message;
		this.assetId2 = assetId2;
		this.category = category;
		this.subcategory = subcategory;
		this.featureDescription = featureDescription;
		this.dateAdded = dateAdded;
		this.isAvailable = isAvailable;
		this.userId2 = userId2;
		this.username = username;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.lastLogin = lastLogin;
		this.password = password;
		this.role = role;
	}

	public int getTransactionId1() {
		return transactionId1;
	}

	public void setTransactionId1(int transactionId1) {
		this.transactionId1 = transactionId1;
	}

	public int getUserId1() {
		return userId1;
	}

	public void setUserId1(int userId1) {
		this.userId1 = userId1;
	}

	public int getAssetId1() {
		return assetId1;
	}

	public void setAssetId1(int assetId1) {
		this.assetId1 = assetId1;
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

	public int getTransactionId2() {
		return transactionId2;
	}

	public void setTransactionId2(int transactionId2) {
		this.transactionId2 = transactionId2;
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

	public int getAssetId2() {
		return assetId2;
	}

	public void setAssetId2(int assetId2) {
		this.assetId2 = assetId2;
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

	public String getFeatureDescription() {
		return featureDescription;
	}

	public void setFeatureDescription(String featureDescription) {
		this.featureDescription = featureDescription;
	}

	public Date getDateAdded() {
		return dateAdded;
	}

	public void setDateAdded(Date dateAdded) {
		this.dateAdded = dateAdded;
	}

	public boolean isAvailable() {
		return isAvailable;
	}

	public void setAvailable(boolean isAvailable) {
		this.isAvailable = isAvailable;
	}

	public int getUserId2() {
		return userId2;
	}

	public void setUserId2(int userId2) {
		this.userId2 = userId2;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public Date getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "OverdueCategory [transactionId1=" + transactionId1 + ", userId1=" + userId1 + ", assetId1=" + assetId1
				+ ", issueDate=" + issueDate + ", dueDate=" + dueDate + ", returnDate=" + returnDate + ", borrowStatus="
				+ borrowStatus + ", transactionId2=" + transactionId2 + ", banStartDate=" + banStartDate
				+ ", isFinePaid=" + isFinePaid + ", isBanFinished=" + isBanFinished + ", message=" + message
				+ ", assetId2=" + assetId2 + ", category=" + category + ", subcategory=" + subcategory
				+ ", featureDescription=" + featureDescription + ", dateAdded=" + dateAdded + ", isAvailable="
				+ isAvailable + ", userId2=" + userId2 + ", username=" + username + ", name=" + name + ", phone="
				+ phone + ", email=" + email + ", lastLogin=" + lastLogin + ", password=" + password + ", role=" + role
				+ "]";
	}

}
