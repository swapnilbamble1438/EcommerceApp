package com.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.conn.DBConnect;

import com.dao.DAO2;
import com.entity.cart;
import com.entity.order_details;
import com.entity.orders;





@MultipartConfig
@WebServlet("/removeorders")
public class removeorders extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public removeorders() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		

		String id = request.getParameter("id");
		
		orders od = new orders();
		od.setOrder_Id(Integer.parseInt(id));
		
		
		try{
			
			DAO2 dao = new DAO2(DBConnect.getConn());
			
			
			if(dao.removeorders(od) > 0)
			{
					response.sendRedirect("orders.jsp");
		
			}
			else
			{
				
					response.sendRedirect("orders.jsp");
			}
			
			
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}
			
	
				
			
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
			
		
		
	}

}
