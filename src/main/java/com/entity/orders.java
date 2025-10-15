package com.entity;

public class orders {
	
	private int Order_Id;
	private String Customer_Name;
	private String Customer_City;
	private String Date;
	private int Total_Price;
	private String Status;
	
	
	public orders() {

	}


	public int getOrder_Id() {
		return Order_Id;
	}


	public void setOrder_Id(int order_Id) {
		Order_Id = order_Id;
	}


	public String getCustomer_Name() {
		return Customer_Name;
	}


	public void setCustomer_Name(String customer_Name) {
		Customer_Name = customer_Name;
	}


	public String getCustomer_City() {
		return Customer_City;
	}


	public void setCustomer_City(String customer_City) {
		Customer_City = customer_City;
	}


	public String getDate() {
		return Date;
	}


	public void setDate(String date) {
		Date = date;
	}


	public int getTotal_Price() {
		return Total_Price;
	}


	public void setTotal_Price(int total_Price) {
		Total_Price = total_Price;
	}


	public String getStatus() {
		return Status;
	}


	public void setStatus(String status) {
		Status = status;
	}
	
	
	

}
