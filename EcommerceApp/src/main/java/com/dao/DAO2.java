package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.jar.Attributes.Name;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.entity.Product;
import com.entity.cart;
import com.entity.customer;
import com.entity.order_details;
import com.entity.orders;
import com.entity.usermaster;
import com.entity.viewlist;
import com.utility.MyUtilities;



public class DAO2 {
	private Connection conn;
	
	public DAO2(Connection conn) {
		this.conn = conn;
	}
	
	
	// viewproduct
	
	public List<viewlist> getAllviewlist(){
		List<viewlist> listv = new ArrayList<viewlist>();
		
		viewlist v = null;
		
		try {
			String sql = "select * from viewlist";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				v = new viewlist();
				v.setBname(rs.getString(1));
				v.setCname(rs.getString(2));
				v.setPname(rs.getString(3));
				v.setPprice(rs.getInt(4));
				v.setPquantity(rs.getInt(5));
				v.setPimage(rs.getString(6));
				listv.add(v);
				
			}
			
			
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return listv;
		}
		
	
	// check customer login
	
	public boolean checkcust(customer cust)
	{
		boolean f = false;
	
	
		try{
			String sql = "select * from customer  where Password=? and Email_Id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
		
		
		
		ps.setString(1, cust.getPassword());
		ps.setString(2, cust.getEmail_Id());
		
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
	
	// check admin login
	
		public boolean checkadmin(usermaster admin)
		{
			boolean f = false;
		
		
			try{
				String sql = "select * from usermaster  where Name=? and Password=?";
				PreparedStatement ps = conn.prepareStatement(sql);
			
			
			ps.setString(1, admin.getName());
			ps.setString(2, admin.getPassword());
			
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
		
		// customer registration
		
		public int  addcustomer(customer ct) {
			
			
			
			
				int a =  0;
				try {
				
					
					String sql = "insert into customer(Name,Password,Email_Id,Contact_No) values(?,?,?,?)";
					PreparedStatement ps= conn.prepareStatement(sql);
					

					
					ps.setString(1, ct.getName());
					ps.setString(2, ct.getPassword());
					ps.setString(3, ct.getEmail_Id());
					ps.setInt(4, ct.getContact_No());
					
					a  = ps.executeUpdate();
					 
					if( a > 0)
						a =1;
					
				
					
				}catch (Exception e) {
					System.out.println(e);
				}
			return a;
				
			}
		
//===================================================================================================================
		//view selected item
		
		// viewproduct
		
		public List<viewlist> getSelecteditem(String st){
			List<viewlist> listv = new ArrayList<viewlist>();
			
			viewlist v = null;
			
			try {
				String sql = "select * from viewlist where Pimage = ?";
				PreparedStatement ps = conn.prepareStatement(sql);
				
				ps.setString(1, st);
				
				ResultSet rs = ps.executeQuery();
				
				while(rs.next())
				{
					v = new viewlist();
					v.setBname(rs.getString(1));
					v.setCname(rs.getString(2));
					v.setPname(rs.getString(3));
					v.setPprice(rs.getInt(4));
					v.setPquantity(rs.getInt(5));
					v.setPimage(rs.getString(6));
					listv.add(v);
					
				}
				
				
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				return listv;
			}
			
		
		
// addtocartnull
		
		public boolean checkaddtocartnull(cart c)
		{
			boolean f = false;
		
		
			try{
				String sql = "select * from cart  where Name is NULL and bname=? and cname =? and pname = ? and pprice = ? and pimage = ?";
				PreparedStatement ps = conn.prepareStatement(sql);
			
			
			ps.setString(1, c.getBname());
			ps.setString(2, c.getCname());
			ps.setString(3, c.getPname());
			ps.setInt(4, c.getPprice());
			ps.setString(5, c.getPimage());
			
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
		
	// update cart	
		public int updateaddtocartnull(cart c) {
			
			int i = 0;
			try{
				String sql = "update cart set pquantity = (pquantity + 1) where Name is NULL and bname = ? and cname = ? and pname = ? and pprice = ? and pimage = ?" ;
				PreparedStatement ps = conn.prepareStatement(sql);
			
			
			ps.setString(1, c.getBname());
			ps.setString(2, c.getCname());
			ps.setString(3, c.getPname());
			ps.setInt(4, c.getPprice());
			ps.setString(5, c.getPimage());
			
			i = ps.executeUpdate();
			if(i > 0)
				i = 1;
			
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}

		return i;
			
			
			
		}
		
		//
public int addtocartnull(cart c) {
			
			int i = 0;
			try{
				String sql = "insert into cart (bname,cname,pname,pprice,pquantity,pimage) values(?,?,?,?,?,?)" ;
				PreparedStatement ps = conn.prepareStatement(sql);
			
			
			ps.setString(1, c.getBname());
			ps.setString(2, c.getCname());
			ps.setString(3, c.getPname());
			ps.setInt(4, c.getPprice());
			ps.setInt(5, c.getPquantity());
			ps.setString(6, c.getPimage());
			
			i = ps.executeUpdate();
			if(i > 0)
				i = 1;
			
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}

		return i;
			
			
			
		}
	
//===================================================================

// view cart


// 

public List<cart> getSelectedcart(){
	List<cart> listv = new ArrayList<cart>();
	
	cart c = null;
	
	try {
		String sql = "select * from cart where Name is NULL";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next())
		{
			c = new cart();
			c.setName(rs.getString(1));
			c.setBname(rs.getString(2));
			c.setCname(rs.getString(3));
			c.setPname(rs.getString(4));
			c.setPprice(rs.getInt(5));
			c.setPquantity(rs.getInt(6));
			c.setPimage(rs.getString(7));
			listv.add(c);
			
		}
		
		
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return listv;
	}
	
//
// view cart of specific customer

public List<cart> getcart(String ct){
	List<cart> listv = new ArrayList<cart>();
	
	cart c = null;
	
	try {
		String sql = "select * from cart where Name = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		ps.setString(1, ct);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next())
		{
			c = new cart();
			c.setName(rs.getString(1));
			c.setBname(rs.getString(2));
			c.setCname(rs.getString(3));
			c.setPname(rs.getString(4));
			c.setPprice(rs.getInt(5));
			c.setPquantity(rs.getInt(6));
			c.setPimage(rs.getString(7));
			listv.add(c);
			
		}
		
		
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return listv;
	}

// removecartnull

public int removecartnull(cart c) {
	
	int i = 0;
	try{
		String sql = "delete from cart where Name is NULL and pimage = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
	
		ps.setString(1, c.getPimage());;

	
	i = ps.executeUpdate();
	if(i > 0)
		i = 1;
	
	
	}catch(Exception ex){
	   System.out.println(ex.getMessage());
	}

return i;
	

	
}


// removecart

	public int removecart(cart c) {
	
	int j = 0;
	try{
		String sql = "delete from cart where Name= ? and pimage= ?";
		PreparedStatement ps = conn.prepareStatement(sql);
	
		ps.setString(1, c.getName());
		ps.setString(2, c.getPimage());

	
	j = ps.executeUpdate();
	if(j > 0)
		j = 1;
	
	
	}catch(Exception ex){
	   System.out.println(ex.getMessage());
	}

	return j;
		
	
	
	}
	
	
	
	// check existing customer login name for new registration
	
	// check customer login
	
		public boolean checkcust2(customer cus)
		{
			boolean f = false;
		
		
			try{
				String sql = "select * from customer  where Name=? or Email_Id=?";
				PreparedStatement ps = conn.prepareStatement(sql);
			
			
			ps.setString(1, cus.getName());
			ps.setString(2, cus.getEmail_Id());
			
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
		
		
// remove orders
		
public int removeorders(orders o) {
			
			int j = 0;
			try{
				String sql = "delete from orders where Order_Id= ?";
				PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setInt(1, o.getOrder_Id());
			

			
			j = ps.executeUpdate();
			if(j > 0)
				j = 1;
			
			
			}catch(Exception ex){
			   System.out.println(ex.getMessage());
			}

			return j;
				
			
			
			}
		
}
