<%@page import="com.conn.DBConnect"%>
<%@page import="com.entity.orders"%>
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
	<h1>All Orders</h1>
	<br>
	</div>

	<br>
	

	<div class = "table-responsive">
	<table border>
	<thead>
		<tr style='background-color:#ebe9eb'>
			<th style='border: 1px solid ; text-align: center'>Order Id</th>
			<th style='border: 1px solid ; text-align: center'>Customer Name</th>
			<th style='border: 1px solid ; text-align: center'>Customer City</th>
			<th style='border: 1px solid ; text-align: center'>Date</th>
			<th style='border: 1px solid ; text-align: center'>Total Price</th>
			<th style='border: 1px solid ; text-align: center'>Status</th>
						<th style='border: 1px solid ; text-align: center' colspan="2" align="center">Actions</th>
			
		</tr>
	</thead>
	
	
	
	<tbody>
	<%
	
	String o = N;
	DAO3 dao = new DAO3(DBConnect.getConn());
	List<orders> listv = dao.getOrders(o);
	for(orders v : listv)
	{%>
	
	
				<tr>
					<td style='border: 1px solid ; text-align: center'><%=v.getOrder_Id() %></td>
					<td style='border: 1px solid ; text-align: center'><%=v.getCustomer_Name() %></td>
					<td style='border: 1px solid ; text-align: center'><%=v.getCustomer_City() %></td>
					<td style='border: 1px solid ; text-align: center'><%=v.getDate() %></td>
	
					
						<td style='border: 1px solid ; text-align: center'>₹ <%=v.getTotal_Price()%></td>
						
						<td style='border: 1px solid ; text-align: center'><%=v.getStatus() %></td>
						
					<td style='border: 1px solid ; text-align: center'><a href='orderdetails.jsp?id=<%=v.getDate()%>'><p style='color: firebrick'>Order Details<p></td>
					
					
						<td style='border: 1px solid ; text-align: center'><a href='removeorders?id=<%=v.getOrder_Id()%>'><img src = "images/delete.jpg" alt="Remove" height= 25px></td>
					
					
				</tr>
			<%} %>

	
	
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