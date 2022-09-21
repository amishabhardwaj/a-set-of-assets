package com.trg.proj;

public class Authentication {
	private int userId;
	private String password;
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
	public Authentication(int userId, String password) {
		super();
		this.userId = userId;
		this.password = password;
	}
	@Override
	public String toString() {
		return "Authentication [userId=" + userId + ", password=" + password + "]";
	}
	
}
