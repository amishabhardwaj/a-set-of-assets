package com.hsbc.pojo;

import java.util.Date;

public class User {

	private int userId;
	private String userName;
	private String Name;
	private String phoneNumber;
	private String email;
	private Date lastLoginTime;
	private String password;
	private String role;

	public User() {
	}

	public User(int userId, String userName, String name, String phoneNumber, String email, Date lastLoginTime,
			String password, String role) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.Name = name;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.lastLoginTime = lastLoginTime;
		this.password = password;
		this.role = role;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
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
		return "User [userId=" + userId + ", userName=" + userName + ", Name=" + Name + ", phoneNumber=" + phoneNumber
				+ ", email=" + email + ", lastLoginTime=" + lastLoginTime + ", password=" + password + ", role=" + role
				+ "]";
	}

}