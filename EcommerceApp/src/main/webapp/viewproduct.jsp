<%@page import="com.dao.DAO2"%>
<%@page import="com.entity.viewlist"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="java.sql.*,java.io.*,java.text.*,java.util.*" %> 
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

<form action = "" method = "post">
<%@ include file = "navbar.jsp" %>


<div style="background-color: #ebe9eb">
	<br>
	<h1>All Available Products</h1>
	<br>
	</div>
	<br>

<div class = "container">
	<div class = "row">
	<%
		DAO2 dao = new DAO2(DBConnect.getConn());
		List<viewlist> listv = dao.getAllviewlist();
		for(viewlist v : listv)
		{%>
		<div class = "col-xxl-3 col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-12 border">
		<div class = "container" style="background-color: white">
		<center>
			<table>
				<tr><th>
					<a href = 'selecteditem.jsp?Pn=<%=v.getPimage()%>'> <img src =' images/<%= v.getPimage() %>' height = 150px weight = 150px></a>
			    </th></tr><br>
				<tr style='background-color: #ebe9eb'><th style='text-align: center'>	
					<a href = 'selecteditem.jsp?Pn=<%=v.getPimage()%>'> <%= v.getBname()%> <%= v.getPname()%></a>
				</th></tr>
			</table>		
		</center>
		</div>
		</div>
		
		<%}%>
	
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