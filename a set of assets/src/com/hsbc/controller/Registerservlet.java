package com.hsbc.controller;

import java.text.SimpleDateFormat;  
import java.util.Date;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hsbc.dao.RegisterDao;
import com.hsbc.pojo.User;

public class Registerservlet extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
	    PrintWriter out=resp.getWriter();
	    String name=req.getParameter("name");
	    String role=req.getParameter("role");
	    String telephone=req.getParameter("telephone");
	    String email=req.getParameter("email");
	    String username=req.getParameter("username");
	    String password=req.getParameter("password");
	    String confpassword=req.getParameter("conpass");
	    
	    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
	    Date d1 = new Date();  
	   
	    if(confpassword.equals(password)) {
	    User bean=new User(1,username,name, telephone,email,d1, password,role);
	    RegisterDao dao=new RegisterDao();
	    int check=dao.addDetails(bean,password);
	    if(check==1) {
	    	resp.sendRedirect("UnameEmail.jsp");
	    }
	    else if(check==2) {
	    	resp.sendRedirect("Username.jsp");
	    }
	    else if(check==3) {
	    	resp.sendRedirect("Email.jsp");
	    }
	    else if(check==0){
	    resp.sendRedirect("Success.jsp");
	    }
	    }
	    else {
	    	resp.sendRedirect("Password.jsp");
	    }
}
}