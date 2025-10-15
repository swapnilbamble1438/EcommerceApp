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
import com.dao.DAO4;
import com.entity.cart;
import com.entity.customer;
import com.entity.order_details;
import com.entity.orders;
import com.entity.usermaster;
import com.dao.DAO;




@MultipartConfig
@WebServlet("/payprocess")
public class payprocess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public payprocess() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		
		
		java.util.Date date = new java.util.Date();
		
		String Date = ""+date;
		String CNameD = new String(request.getParameter("CName"));
		String CName = CNameD.trim();
		
		String CusName = request.getParameter("CusName");

		String CityD = new String(request.getParameter("City"));
		String City = CityD.trim();
		
		String Total = request.getParameter("Total");

		String Status = "Processing";
		
		String ND = new String(request.getParameter("N2"));
		String N = ND.trim();
		
		
		if(City.equals("null") || Total.equals("null"))
			response.sendRedirect("paymentfail.jsp?msgf=Select any item first.");
		
		
		else
		{
		orders o = new orders();
		o.setCustomer_Name(CName);
		o.setCustomer_City(City);
		o.setDate(Date);
		o.setTotal_Price(Integer.parseInt(Total));
		o.setStatus(Status);
		
		
		
		order_details od = new order_details();
		od.setDate(Date);
		od.setName(N);
		
		
		cart c = new cart();
		c.setName(N);
		
		
		
		try{
			
			DAO4 dao = new DAO4(DBConnect.getConn());
			
	
			
			 if(CusName.equals("empty"))
			{
				if(dao.checkcart() == true)
				{
					if(dao.addOrders(o) > 0)
					{
						if(dao.addOrder_details() > 0)
						{
							if(dao.deletecart() > 0)
							{
								if(dao.updateOrder_details(od) > 0)
								{
									response.sendRedirect("orders.jsp");
								}
								else
									response.sendRedirect("paymentfail.jsp?msgf= Something weng wrong. while adding date in order_details(empty).");
							}
							else
								response.sendRedirect("paymentfail.jsp?msgf=something went wrong. while deleting cart(empty).");
						
						}
						else
							response.sendRedirect("paymentfail.jsp?msgf=Something went wrong. while adding in order_details(empty).");
					}

					else
				
						response.sendRedirect("paymentfail.jsp?msgf=Something went wrong. while adding in orders(empty).");
				}
				else
					response.sendRedirect("paymentfail.jsp?msgf=Add items to cart first(empty).");
			}
			else
			{
				if(dao.checkcart2(N) == true)
				{
					if(dao.addOrders(o) > 0)
					{
							if(dao.addOrder_details2(N) > 0)
							{
								if(dao.deletecart2(N) > 0)
								{
									if(dao.updateOrder_details2(od) > 0)
									{
										response.sendRedirect("orders.jsp");
									}
									else
										response.sendRedirect("paymentfail.jsp?msgf= something weng wrong. while adding date in order_details.");
								}
								else
									response.sendRedirect("paymentfail.jsp?msgf=something went wrong. while deleting cart.");
							}
							else
						
								response.sendRedirect("paymentfail.jsp?msgf=Something went wrong. while adding in order_details.");
				
					}
					else
						response.sendRedirect("paymentfail.jsp?msgf=Something went wrong. while adding in Orders.");
				}
				else
					response.sendRedirect("paymentfail.jsp?msgf=Add items to cart first.");
				
				
				
			}
			
			
			
			
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}
			
	
				
			
			
		}
		
	}

}
