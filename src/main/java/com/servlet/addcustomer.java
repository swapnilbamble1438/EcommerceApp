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
import com.entity.customer;
import com.dao.DAO;




@MultipartConfig
@WebServlet("/addcustomer")
public class addcustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public addcustomer() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		String UsernameD = new String(request.getParameter("Username"));
		String Username = UsernameD.trim();
		
		String PasswordD = new String(request.getParameter("Password"));
		String Password = PasswordD.trim();
		
		String Email_IdD = new String(request.getParameter("Email_Id"));
		String Email_Id = Email_IdD.trim();
	
		String Contact_NoD = new String(request.getParameter("Contact_No"));
		String Contact_No = Contact_NoD.trim();
		
		String Total6 = request.getParameter("Total");
		
		
		String CusName6 = request.getParameter("CusName");
		
		
		customer ct = new customer();
		ct.setName(Username);
		ct.setPassword(Password);
		ct.setEmail_Id(Email_Id);
		ct.setContact_No(Integer.parseInt(Contact_No));
		
		
		
		
		try{
			DAO2 dao =new DAO2(DBConnect.getConn());
			
			
		 	if(dao.checkcust2(ct) == true)
			{
				
				response.sendRedirect("fail.jsp");
				
				
			}
			else
			{
		
			    if(dao.addcustomer(ct) > 0)
			    {
			    	Cookie creg = new Cookie("creg","creg");
					creg.setMaxAge(10);
					response.addCookie(creg);
			    	response.sendRedirect("customerlogin.jsp?Total="+Total6+"&CusName="+CusName6+"");
			    }
			    else
			    	response.sendRedirect("fail.jsp");
			
			}
			
		}catch (Exception ex){
			System.out.println(ex);
		}

	
			
	
				
			
			
		
		
	}

}
