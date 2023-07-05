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
import com.dao.DAO5;
import com.entity.cart;
import com.entity.order_details;





@MultipartConfig
@WebServlet("/removetable_order_details")
public class removetable_order_details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public removetable_order_details() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String id = request.getParameter("id");
		String ie = request.getParameter("ie");
		
		
	
			order_details c = new order_details();
			c.setDate(id);
			c.setPimage(ie);
		
		
		
		
		
		try{
			
			
			DAO5 dao = new DAO5(DBConnect.getConn());
			
			
				if(dao.removeorder_details(c) > 0)
					response.sendRedirect("table_order_details.jsp");					
				else
					response.sendRedirect("table_order_details.jsp");					
			
			
				
			
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}
			
	
				
			
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
			
		
		
	}

}
