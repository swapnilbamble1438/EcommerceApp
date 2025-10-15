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





@MultipartConfig
@WebServlet("/removecartnulla")
public class removecartnulla extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public removecartnulla() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String ie = request.getParameter("ie");

		
		cart c = new cart();
		
		c.setPimage(ie);
		
		
		
		
		
		try{
			DAO2 dao = new DAO2(DBConnect.getConn());
			
			
			if (dao.removecartnull(c) > 0)
			{
				
					response.sendRedirect("cartnulla.jsp");
		
			}
			else
			{
				
					response.sendRedirect("cartnulla.jsp");
			}
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}
			
	
				
			
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
			
		
		
	}

}
