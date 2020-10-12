package com.hsbc.pojo;

import java.sql.Timestamp;
import java.util.Date;

public class User {
private int userId;
private String name;
private String role;
private String phoneNumber;
private String email;
private String username;
private Date lastLoginTime;
private String password;
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public Date getLastLoginTime() {
	return lastLoginTime;
}
public void setLastLoginTime(Date lastLoginTime) {
	this.lastLoginTime = lastLoginTime;
}
public User(int userId,String name, String role, String phoneNumber, String email, String username,Date lastLoginTime,String password) {
	super();
	this.userId=userId;
	this.name = name;
	this.role = role;
	this.phoneNumber = phoneNumber;
	this.email = email;
	this.username = username;
	this.lastLoginTime=lastLoginTime;
	this.password=password;
}
public User() {
	// TODO Auto-generated constructor stub
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
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
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
@Override
public String toString() {
	return "User [userId=" + userId + ", name=" + name + ", role=" + role + ", phoneNumber=" + phoneNumber + ", email="
			+ email + ", username=" + username + ", lastlogin=" + lastLoginTime + ", password=" + password + "]";
}


}
