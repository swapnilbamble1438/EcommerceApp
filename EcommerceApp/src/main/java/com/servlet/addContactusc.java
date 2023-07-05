package com.servlet;

import java.io.IOException;
import java.nio.file.Path;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.conn.DBConnect;
import com.dao.DAO;
import com.dao.DAO2;
import com.dao.DAO3;
import com.dao.DAO5;
import com.entity.cart;
import com.entity.contactus;
import com.entity.customer;
import com.entity.usermaster;
import com.dao.DAO;




@MultipartConfig
@WebServlet("/addContactusc")
public class addContactusc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public addContactusc() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Name=request.getParameter("Name");
		String Email_Id=request.getParameter("Email_Id");
		String Contact_No=request.getParameter("Contact_No");
		String Message=request.getParameter("Message");
		

		
		contactus c = new contactus();
		c.setName(Name);
		c.setEmail_Id(Email_Id);
		c.setContact_No(Integer.parseInt(Contact_No));
		c.setMessage(Message);
		
		
		
		
		
		
		try{
			DAO5 dao = new DAO5(DBConnect.getConn());
			
			
			if(dao.addContactus(c) > 0)
				{
				
					response.sendRedirect("cupassc.jsp");
					
				}
				else
					response.sendRedirect("cufailc.jsp");
		
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}
			
	
				
			
	
	}
		
			
		
		
	

}
