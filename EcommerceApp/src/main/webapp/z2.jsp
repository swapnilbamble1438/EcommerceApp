<%@page import="com.entity.cart"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.DAO2"%>
<%@page import="java.sql.*,java.io.*,java.text.*,java.util.*" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>

        function show()
        {
            alert("Add_something_to_cart_first.");
        }
    </script>

<link rel="stylesheet" href = "images/bootstrap.css">

<link rel="stylesheet" href="Css/w3.css">
<link rel="stylesheet" href="Css/font.css">
<link rel="stylesheet" href="Css/cart.css">

<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
</style>
</head>
<body>


<%@ include file="admin_navbar.jsp" %>
<center>
<div style="background-color: #ebe9eb">
	<br>
	<h1>Cart</h1>
	<br>
	</div>
	<br>


<%

String N = null;

String CusName = "empty";

%>


<%

String msgg = null;
Cookie[] cookies = request.getCookies();

for(int i = 0; i < cookies.length; i++) 
	{
if (cookies[i].getName().equals("cart")) 
	{
        cookies[i].setMaxAge(0);
        response.addCookie(cookies[i]);
        msgg = "Product added to cart successfully....";
	}       
}

%>
<%if(msgg != null)
		out.println("<b style='color: firebrick'>" + msgg +  "</b>");%>

	
	<div class = "mbd">
	<div class = "container border">
	<%
	int Total = 0;
	String ct = null;
	DAO2 dao = new DAO2(DBConnect.getConn());
	List<cart> listv = dao.getSelectedcart();
	for(cart v : listv)
	{%>
			
			<div class = "container bd">
			
			<div class = "row justify-content-center align-items-center">
			
			<div class = "col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-2">
				<img src='images/<%=v.getPimage() %>' height=100px weight=90px>
			</div>
			&ensp;
			&ensp;
			&ensp;
			&ensp;
			&ensp;
			&ensp;
			&ensp;
			
			<div class = "col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-2">
				<%=v.getBname() %> &ensp;<%=v.getPname() %>
				<br><%=v.getCname()%>
				</div>

			<div class = "col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-2">
				<%=v.getPquantity() %>
			</div>

				<div class = "col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-2">
				₹ <%=v.getPprice() %>
				</div>
				
				
			
				
			<div class = "col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-2">		
				<a href='removecartnulla?ie=<%=v.getPimage()%>'><img src = "images/delete.jpg" alt="Remove" height= 25px></a>
				</div>
				
			<% Total = Total + v.getPprice()* v.getPquantity() ; %>
	
		</div>
		</div>
		<br>
		<%} %>
		
				
		<div class = "tp"><h5>Total Price: ₹ <%=Total %> </h5></div>
	
		
		
		<%if(Total != 0)
			{%>
		<a href='ShippingAddress.jsp?Total=<%= Total %> + &CusName=<%= CusName%> +' ><h5><b class = "pd"> Proceed To Checkout</b></h5></a>
		<%}
		else if(Total == 0)
		{%>
			<a onclick = "show()"><h5><b class = "pd"><h5><b> Proceed To Checkout</b></h5></a>
		<%}%>
		

	
	<% if(Total == 0)
	{%>
	
	<img src = "images/emptycart.png" height=200px>
	<h2 style="color:firebrick">YOUR CART IS EMPTY</h2>
	<%} %>

			
	
	
	</div>
</div>	
</center>


<br>
	<footer text-align: center;
  padding: 3px;
  background-color: DarkSalmon;
  color: white;>
  
	<%@ include file = "footer.jsp" %>
</footer>







</body>
</html>