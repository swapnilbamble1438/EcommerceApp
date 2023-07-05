<%@page import="com.entity.order_details"%>
<%@page import="com.entity.orders"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.DAO3"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href = "images/bootstrap.css">

<link rel="stylesheet" href="Css/w3.css">
<link rel="stylesheet" href="Css/font.css">

<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
</style>
</head>
<body>

<form method = "post" action = "payprocess.jsp">
	<%@ include file = "customer_navbar.jsp" %>



<center>
<div style="background-color: #ebe9eb">	
	<br>
	<h1>Orders Details</h1>
	<br>
	</div>

	<br>
	



		
				<table border = '1' cellspacing=5 cellpadding=5 align='center'>
							
							
										<% 
			
			String d = request.getParameter("id");
				
			DAO3 dao = new DAO3(DBConnect.getConn());
			List<orders> listv = dao.getOrdersbydate(d);
			for(orders v : listv)
			
			{
			%>
							<tr>
								<th>Customer Name: </th>
								<th><%=v.getCustomer_Name() %></th>
							</tr>
							
							<tr>
								<th>City: </th>
								<th><%=v.getCustomer_City() %></th>
							</tr>
							
							<tr>
								<th>Date: </th>
								<th><%=v.getDate() %></th>
							</tr>
						
							<tr>
								<th>Total Price: </th>
								<th><%=v.getTotal_Price() %></th>
							</tr>
					
							<tr>
								<th>Status: </th>
								<th><%=v.getStatus() %></th>
							</tr>

		
						
						
<% }%>
		</table>
	
	<br>
	<div class = "table-responsive">
	<table border>
	<thead>
		<tr style='background-color:#ebe9eb'>
			<th style='border: 1px solid ; text-align: center'>Date</th>
			<th style='border: 1px solid ; text-align: center'>Name</th>
			<th style='border: 1px solid ; text-align: center'>Brand</th>
			<th style='border: 1px solid ; text-align: center'>Category</th>
			<th style='border: 1px solid ; text-align: center'>Product Name</th>
			<th style='border: 1px solid ; text-align: center'>Price</th>
			<th style='border: 1px solid ; text-align: center'>Quantity</th>
			<th style='border: 1px solid ; text-align: center'>Product Image</th>
			
		</tr>
	</thead>
	
	
	
	<tbody>
	<% 
	int Total = 0;
	
List<order_details> listd = dao.getOrderdetails(d);
for(order_details v : listd)
	{%>
	
	<tr>
				<td style='border: 1px solid ; text-align: center'><%=v.getDate() %></td>
				
				<td style='border: 1px solid ; text-align: center'><%=v.getName() %></td>
				
				<td style='border: 1px solid ; text-align: center'><%=v.getBname() %></td>
				
				<td style='border: 1px solid ; text-align: center'><%=v.getCname() %></td>
				
				<td style='border: 1px solid ; text-align: center'><%=v.getPname() %></td>
				
				<td style='border: 1px solid ; text-align: center'>₹ <%=v.getPprice() %></td>
				
				<td style='border: 1px solid ; text-align: center'><%=v.getPquantity() %></td>
				
				<td style='border: 1px solid ; text-align: center'><img src='images/<%=v.getPimage()%>' height= 100px weight = 100px></td>
						

	
		<tr>
		<% Total = Total + v.getPprice()* v.getPquantity() ;
		} %>
		<tr>
		<td></td>
		<td></td>
		<td></td>
		<td><h5>Total Price:</h5></td>
		<td><h5 style='color: firebrick'>₹ <%= Total %></h5></td>
		<td></td>
		<td></td>
		
	</tr>
	</tbody>
	</table>
	</div>


</center>
 <br>
	<footer text-align: center;
  padding: 3px;
  background-color: DarkSalmon;
  color: white;>
  
	<%@ include file = "footer.jsp" %>
</footer>
</form>

</body>
</html>