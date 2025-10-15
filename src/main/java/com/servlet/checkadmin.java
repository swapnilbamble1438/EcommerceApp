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
import com.entity.cart;
import com.entity.customer;
import com.entity.usermaster;
import com.dao.DAO;




@MultipartConfig
@WebServlet("/checkadmin")
public class checkadmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public checkadmin() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String NameD = new String(request.getParameter("Username"));
		String Name = NameD.trim();
		
		
		String admin = Name;
		
		
		
		String PasswordD = new String(request.getParameter("Password"));
		String Password = PasswordD.trim();
		
		usermaster um = new usermaster();
		um.setName(Name);
		um.setPassword(Password);
		
		
		
		
		try{
			DAO2 dao = new DAO2(DBConnect.getConn());
			
			
			if (dao.checkadmin(um)==true)
			{
				Cookie u = new Cookie("tname",admin);
				u.setMaxAge(9999);
				response.addCookie(u);
				response.sendRedirect("adminhome.jsp");
			}
				else
				{
					Cookie up = new Cookie("un","up");
					up.setMaxAge(10);
					response.addCookie(up);
					response.sendRedirect("adminlogin.jsp");
				}
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}
			
	
				
			
			
		
		
	}

}
