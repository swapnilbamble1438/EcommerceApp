<%@page import="java.util.List"%>
<%@page import="com.dao.DAO5"%>
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
	<%@ include file = "admin_navbar.jsp" %>



<center>
<div style="background-color: #ebe9eb">	
	<br>
	<h1>Orders Details</h1>
	<br>
	</div>

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
									<th style='border: 1px solid ; text-align: center' colspan="2" align="center">Actions</th>
			
			
		</tr>
	</thead>
	
	
	
	<tbody>
	<% 
	DAO5 dao = new DAO5(DBConnect.getConn());
	List<order_details> listv = dao.getAllorder_details();
	for(order_details v : listv)
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
						
								<td style='border: 1px solid ; text-align: center'><a href='removetable_order_details?id=<%=v.getDate()%>&ie=<%=v.getPimage()%>'><img src = "images/delete.jpg" alt="Remove" height= 25px></td>
		
	
		<tr>
		<% 
		} %>
		
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