package com.trg.proj;

import java.util.Date;

public class User {
String name;
String role;
String phoneNumber;
String email;
String username;
Date lastlogin;
String password;
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Date getLastlogin() {
	return lastlogin;
}
public void setLastlogin(Date lastlogin) {
	this.lastlogin = lastlogin;
}
public User(String name, String role, String phoneNumber, String email, String username,Date lastlogin,String password) {
	super();
	this.name = name;
	this.role = role;
	this.phoneNumber = phoneNumber;
	this.email = email;
	this.username = username;
	this.lastlogin=lastlogin;
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
	return "RegisterBean [name=" + name + ", role=" + role + ", telephone=" + phoneNumber+ ", email=" + email
			+ ", username=" + username +  "]";
}
}
