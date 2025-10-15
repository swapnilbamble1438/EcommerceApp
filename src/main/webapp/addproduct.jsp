<%@page import="com.entity.category"%>
<%@page import="com.entity.brand"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.DAO"%>
<%@page import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href = "images/bootstrap.css">

<link rel="stylesheet" href="Css/w3.css">
<link rel="stylesheet" href="Css/font.css">
<link rel="stylesheet" href="Css/abc.css">

<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}


.a{
	margin-right: 225px;
	
	}
    
    .b{
	margin-right: 190px;
	
	}
	
	.e{
	margin-right: 205px;
	
	}
    
    .d{
	margin-right: 215px;
	
	}
	
	.f{
	margin-right: 265px;
	
	}
	
	.g{
	margin-right: 195px;
	
	}
	
	.j{
	margin-left: 17px;
	
	}


</style>
</head>
<body>

	


		<form method="post" action="addproduct" enctype="multipart/form-data">

	<%@ include file = "admin_navbar.jsp" %>
	
		<div style="background-color: #ebe9eb">
	<br>
	<h1>Add New Product</h1>
	<br>
	</div>
	<br>
	
	 <div class="container border">

			<h4><b class="a">Select Brand:</b> </h4>
			<h2><select name="bname" class = "c"> 
		<% 
			DAO dao = new DAO(DBConnect.getConn());
			List<brand> listb = dao.getAllbrand();
			for(brand b : listb)
				{%>
				<option><%= b.getBname() %></option>
			  <%}%>

						</select></h2> 
						
						
			
			<h4><b class="b"> Select Category:</b></h4>
			 <h2><select name="cname" class = "c">
	
		<%
			dao = new DAO(DBConnect.getConn());
			List<category> listc = dao.getAllcategory();
			for(category c : listc)
				{%>	
				<option><%= c.getCname() %></option>
			  <%}%>

						</select></h2> 
			
			<h4><b class="e">Product Name:</b></h4>
			<h2><input type=text name="pname" class = "c" required></h2>
			
			<h4><b class="d">Product Price:</b></h4>
			<h2><input type=number name="pprice" class = "c" required></h2>
				
			<h4><b class="f">Quantity:</b></h4>
			<h2><input type=number  value= "1" name="pquantity" class = "c" disabled selected required> </h2>
			<input type=hidden value="1" name="pquantity"  required>
			
			<h4><b class="g">Product Image:</b></h4>
			<div class="j"><h6><b><input type=file name="pimage" required></b></h6></div>
			
			<br><br>
			<h3><b><input type=submit value="Add Product" ></b></h3>

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