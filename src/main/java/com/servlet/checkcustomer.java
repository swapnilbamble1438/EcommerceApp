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
import com.dao.DAO;




@MultipartConfig
@WebServlet("/checkcustomer")
public class checkcustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public checkcustomer() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String Email_IdD =new String(request.getParameter("Email_Id"));
		String Email_Id = Email_IdD.trim();
		
		String PasswordD = new String(request.getParameter("Password"));
		String Password = PasswordD.trim();
		
		String Total = request.getParameter("Total");
		String CusName = request.getParameter("CusName");
		
		System.out.println(CusName);
		
		customer c = new customer();
		c.setEmail_Id(Email_Id);
		c.setPassword(Password);
		
		
		
		
		try{
			DAO2 dao = new DAO2(DBConnect.getConn());
			
			
			if (dao.checkcust(c)==true)
			{
				Cookie cus = new Cookie("cname",Email_Id);
				cus.setMaxAge(9999);
				response.addCookie(cus);
				if(CusName.equals("empty"))
					response.sendRedirect("ShippingAddress.jsp?Total="+ Total +" &CusName= "+CusName+"");
				else
					response.sendRedirect("customerhome.jsp");
			}
			else
			{

				Cookie up = new Cookie("un","up");
				up.setMaxAge(10);
				response.addCookie(up);
				response.sendRedirect("customerlogin.jsp?Total="+Total + " &CusName= "+CusName+"");
			}
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}
			
	
				
			
			
		
		
	}

}
