package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.cart;
import com.entity.customer;
import com.entity.order_details;
import com.entity.orders;

public class DAO4 {
	private Connection conn;
	
	public DAO4(Connection conn) {
		this.conn = conn;
	}
	
	
	//check cart by null
	
	public boolean checkcart()
	{
		boolean f = false;
	
	
		try{
			String sql = "select * from cart  where Name is NULL";
			PreparedStatement ps = conn.prepareStatement(sql);

		
		ResultSet rs=ps.executeQuery();
		if (rs.next()==true)
			f = true;
		else
			f = false;
		
		}catch(Exception ex){
		   System.out.println(ex.getMessage());
		}

	return f;
			
	}
	
	//check cart by name
	
		public boolean checkcart2(String nm)
		{
			boolean f = false;
		
		
			try{
				String sql = "select * from cart  where Name= ?";
				PreparedStatement ps = conn.prepareStatement(sql);

				ps.setString(1, nm);
				
			ResultSet rs=ps.executeQuery();
			if (rs.next()==true)
				f = true;
			else
				f = false;
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}

		return f;
				
		}
	
	// add to orders
	
	public int addOrders(orders o) {
		
		int i = 0;
		try{
			String sql = "insert into orders(Customer_Name,Customer_City,Date,Total_Price,Status) values(?,?,?,?,?)" ;
			PreparedStatement ps = conn.prepareStatement(sql);
		
		ps.setString(1, o.getCustomer_Name());
		ps.setString(2, o.getCustomer_City());
		ps.setString(3, o.getDate());
		ps.setInt(4, o.getTotal_Price());
		ps.setString(5, o.getStatus());
		
		
		i = ps.executeUpdate();
		if(i > 0)
			i = 1;
		
		
		}catch(Exception ex){
		   System.out.println(ex.getMessage());
		}

	return i;
		
		
		
	}
	
	// add to orders
	
		public int addOrder_details() {
			
			int j = 0;
			try{
				String sql = "insert into order_details(Name,bname,cname,pname,pprice,pquantity,pimage) select * from cart where Name is NULL";
				PreparedStatement ps = conn.prepareStatement(sql);
			
			
			
			j = ps.executeUpdate();
			if(j > 0)
				j = 1;
			
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}

		return j;
			
			
			
		}
		
		//add to orders by name
	
		
			public int addOrder_details2(String st) {
				
				int j = 0;
				try{
					String sql = "insert into order_details(Name,bname,cname,pname,pprice,pquantity,pimage) select * from cart where Name = ?";
					PreparedStatement ps = conn.prepareStatement(sql);
				
					ps.setString(1, st);
				
				j = ps.executeUpdate();
				if(j > 0)
					j = 1;
				
				
				}catch(Exception ex){
				   System.out.println(ex.getMessage());
				}

			return j;
				
				
				
			}
			
		
		//delete cart null
		

		public int deletecart() {
			
			int k = 0;
			try{
				String sql = "delete from cart where Name is NULL";
				PreparedStatement ps = conn.prepareStatement(sql);
			
			
			
			k = ps.executeUpdate();
			if(k > 0)
				k = 1;
			
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}

		return k;
			
			
			
		}
	
		
		//delete cart by name
		

		public int deletecart2(String st) {
			
			int k = 0;
			try{
				String sql = "delete from cart where Name = ?";
				PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, st);
			
			k = ps.executeUpdate();
			if(k > 0)
				k = 1;
			
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}

		return k;
			
			
			
		}
	
		
		//update order_details
		
public int updateOrder_details(order_details od) {
			
			int l = 0;
			try{
				String sql = "update order_details set Date = ? , Name=? where Date is NULL";
				PreparedStatement ps = conn.prepareStatement(sql);
			
				ps.setString(1, od.getDate());
				ps.setString(2, od.getName());
			
			
			l = ps.executeUpdate();
			if(l > 0)
				l = 1;
			
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}

		return l;
			
			
			
		}



//update order_details 2

public int updateOrder_details2(order_details od) {
			
			int l = 0;
			try{
				String sql = "update order_details set Date = ? where Date is NULL";
				PreparedStatement ps = conn.prepareStatement(sql);
			
				ps.setString(1, od.getDate());
				
			
			
			l = ps.executeUpdate();
			if(l > 0)
				l = 1;
			
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}

		return l;
			
			
			
		}
	
	
}
