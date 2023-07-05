<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method = "post" action = "payprocess">
	<%@ include file = "customer_navbar.jsp" %>

<%
String CName = request.getParameter("CName");
String CusName = request.getParameter("CusName");
String City = request.getParameter("City");
String Total = request.getParameter("Total"); 
String N2 = N;
 

%>
<input type = "hidden" name = "CName" value ="<%=CName %>" >
<input type = "hidden" name = "City" value ="<%=City %>" >
<input type = "hidden" name = "Total" value =<%=Total %> >
<input type = "hidden" name = "CusName" value =<%=CusName %> >
<input type = "hidden" name = "N2" value ="<%=N2 %>" >



<center>
<div style="background-color: #ebe9eb">	
	<br>
	<h1>Confirm Payment</h1>
	<br>
	</div>



<br>
<h3><b><input type = "submit" value = "Confirm Payment"></b></h3>

<h4><b>OR</b></h4>

<h5><b><button style='border: solid 1px '><a href = "customerhome.jsp" style='text-decoration: none'>Cancel Payment</a></button>

<br>

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