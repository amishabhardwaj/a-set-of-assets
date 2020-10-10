package com.hsbc.models;

enum rou {
	Admin, Borrower
}

public class Authentication {

	private int userId;
	private String password;
	private rou role;

	public Authentication(int userId, String password, rou role) {
		super();
		this.userId = userId;
		this.password = password;
		this.role = role;
	}

	public Authentication() {
		// TODO Auto-generated constructor stub
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public rou getRole() {
		return role;
	}

	public void setRole(rou role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Authentication [userId=" + userId + ", password=" + password + ", role=" + role + "]";
	}

}
