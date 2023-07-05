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
import com.entity.contactus;
import com.entity.order_details;
import com.entity.orders;





@MultipartConfig
@WebServlet("/remove_contactus")
public class remove_contactus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public remove_contactus() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
	

String Id = request.getParameter("id");
		
		
		
		contactus c = new contactus();
		
		c.setId(Integer.parseInt(Id));
		
		
		
		try{
			DAO5 dao = new DAO5(DBConnect.getConn());
			
			
			if (dao.removecont(c) > 0)
			{
				
					response.sendRedirect("table_contactus.jsp");
				
			}
			else
			{

				response.sendRedirect("table_contactus.jsp");
			}
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}
		
	}
	
				
			
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
			
		
		
	}

}
