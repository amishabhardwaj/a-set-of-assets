package com.hsbc.pojo;

import java.util.Date;

public class OverdueName {

	private int transactionId1;
	private int userId1;
	private int assetId;
	private Date issueDate;
	private Date dueDate;
	private Date returnDate;
	private String borrowStatus;
	private int transactionId2;
	private Date banStartDate;
	private boolean isFinePaid;
	private boolean isBanFinished;
	private String message;
	private int userId2;
	private String username;
	private String name;
	private String phone;
	private String email;
	private Date lastLogin;
	private String password;
	private String role;

	public OverdueName() {
	}

	public OverdueName(int transactionId1, int userId1, int assetId, Date issueDate, Date dueDate, Date returnDate,
			String borrowStatus, int transactionId2, Date banStartDate, boolean isFinePaid, boolean isBanFinished,
			String message, int userId2, String username, String name, String phone, String email, Date lastLogin,
			String password, String role) {
		super();
		this.transactionId1 = transactionId1;
		this.userId1 = userId1;
		this.assetId = assetId;
		this.issueDate = issueDate;
		this.dueDate = dueDate;
		this.returnDate = returnDate;
		this.borrowStatus = borrowStatus;
		this.transactionId2 = transactionId2;
		this.banStartDate = banStartDate;
		this.isFinePaid = isFinePaid;
		this.isBanFinished = isBanFinished;
		this.message = message;
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
		return "Overdue [transactionId1=" + transactionId1 + ", userId1=" + userId1 + ", assetId=" + assetId
				+ ", issueDate=" + issueDate + ", dueDate=" + dueDate + ", returnDate=" + returnDate + ", borrowStatus="
				+ borrowStatus + ", transactionId2=" + transactionId2 + ", banStartDate=" + banStartDate
				+ ", isFinePaid=" + isFinePaid + ", isBanFinished=" + isBanFinished + ", message=" + message
				+ ", userId2=" + userId2 + ", username=" + username + ", name=" + name + ", phone=" + phone + ", email="
				+ email + ", lastLogin=" + lastLogin + ", password=" + password + ", role=" + role + "]";
	}

}
