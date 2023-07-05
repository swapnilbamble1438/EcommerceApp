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
@WebServlet("/removecart")
public class removecart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public removecart() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String id = request.getParameter("id");
		String ie = request.getParameter("ie");

		
		cart d = new cart();
		d.setName(id);
		d.setPimage(ie);
		
		
		
		
		
		try{
			
			DAO2 dao = new DAO2(DBConnect.getConn());
			
			
			if(dao.removecart(d) > 0)
			{
					response.sendRedirect("cart.jsp");
		
			}
			else
			{
				
					response.sendRedirect("cart.jsp");
			}
			
			
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}
			
	
				
			
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
			
		
		
	}

}
