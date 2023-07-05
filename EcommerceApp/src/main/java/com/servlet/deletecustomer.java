package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.conn.DBConnect;
import com.dao.DAO;
import com.entity.customer;



@WebServlet("/deletecustomer")
public class deletecustomer extends HttpServlet{
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String Name = req.getParameter("Name");
		String Email_Id =  req.getParameter("Email_Id");
		
		
		
		customer c = new customer();
		
		c.setName(Name);
		c.setEmail_Id(Email_Id);
		
		DAO dao = new DAO(DBConnect.getConn());
		
		boolean f = dao.deleteCustomer(c);
		
		
		if(f)
		{
	
			resp.sendRedirect("managecustomers.jsp");
			
		
		}
		else {
			
			
			resp.sendRedirect("managecustomers.jsp");
		
		
		}	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
	}
	
}
