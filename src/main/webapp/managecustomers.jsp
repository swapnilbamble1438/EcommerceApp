<%@page import="com.entity.customer"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.DAO"%>
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
	<form action="" method= "post">

	<%@ include file = "admin_navbar.jsp" %>
	
		<div style="background-color: #ebe9eb">
	<br>
	<h1>Manage Customers</h1>
	<br>
	</div>
	<br>
	
	<div class = "container">
		<h2>All Customers Details</h2>
		<div class = "table-responsive">
		<table border>
		<thead style='background-color:#ebe9eb'>
			<tr>
				<th style='border: 1px solid ; text-align: center'>Name</th>
				<th style='border: 1px solid ; text-align: center'>Password</th>
				<th style='border: 1px solid ; text-align: center'>Email Id</th>
				<th style='border: 1px solid ; text-align: center'>Contact No</th>
				<th style='border: 1px solid ; text-align: center' colspan="2" align="center">Actions</th>
			</tr>
		</thead>
		<tbodY>
		
		<%
			DAO dao = new DAO(DBConnect.getConn());
			List<customer> list = dao.getAllCustomer();
			for(customer c : list)
			{%>
			<tr>
				<td style='border: 1px solid ; text-align: center'><%= c.getName() %></td>
				<td style='border: 1px solid ; text-align: center'><%= c.getPassword()%></td>
				<td style='border: 1px solid ; text-align: center'><%= c.getEmail_Id() %></td>
				<td style='border: 1px solid ; text-align: center'><%= c.getContact_No() %></td>
				<td style='border: 1px solid ; text-align: center'> <a href = 'carta.jsp?custname=<%=c.getName()%>' ><%=c.getName() %> Cart</a></td>
				<td style='border: 1px solid ; text-align: center; color: firebrick'> <a href = 'deletecustomer?Name=<%=c.getName()%>&Email_Id=<%=c.getEmail_Id() %>' ><img src = "images/delete.jpg" alt="Remove" height= 25px></a></td>
			</tr>
			<%}
		%>
		
		
		</tbodY>
		</table>
		</div>
	</div>
	
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