	<% String Total2 = request.getParameter("Total"); %>
	
	<input type = "hidden" name = "Total" value =<%=Total2 %> >
	
	<% String CusName2 = request.getParameter("CusName"); %>
	
	<input type = "hidden" name = "CusName" value =<%=CusName2 %> >
	
	
	

	<%@ include file="validateloginc.jsp" %>

	<div style='margin-left:40% '>
	
	<b style='color: firebrick'>Welcome <%= N%> </b> 
	
	<b>
	<a href="cart.jsp" class="w3-bar-item w3-button" ><img src = images/cart.png height=40px alt=Cart></a>
	<b style="position: relative;
  top: 16px;
  right: 37px;"><span style="height: 25px;
  width: 25px;
  background-color: red;
  border-radius: 50%;
  display: inline-block"><b style="color:white"><center><%=tcqty %></center></b></span></b>
	</b>
	<a href="orders.jsp" class="w3-bar-item w3-button" ><b> View Orders List</b></a>
	
	<a href="customerlogin.jsp" class="w3-bar-item w3-button" ><b>Customer Logout</b></a>
	
	<a href="contactusc.jsp" class="w3-bar-item w3-button" ><b>Contact Us</b></a>
	
	</div>
	<center>
	<b class="w3-wide" style="width:250px"> <h3><b>Online Electronic Shopping</b></h3></b>
	
	<div class=" w3-large w3-text-grey" style="font-weight:bold">
	
	<a href="customerhome.jsp" class="w3-bar-item w3-button" >Customer Home</a>&ensp;
	
	<a href="categoryc.jsp" class="w3-bar-item w3-button" >View Category</a>&ensp;
	
	<a href="tvc.jsp" class="w3-bar-item w3-button">Tv</a>&ensp;
	<a href="laptopc.jsp" class="w3-bar-item w3-button">Laptop</a>&ensp;
	<a href="mobilec.jsp" class="w3-bar-item w3-button">Mobile</a>&ensp;
	<a href="watchc.jsp" class="w3-bar-item w3-button">Watch</a>&ensp;
	
	<a href="viewproductc.jsp" class="w3-bar-item w3-button" >View All Product</a>&ensp;
	
	<a href="aboutusc.jsp" class="w3-bar-item w3-button" >About Us</a>&ensp;
	
	</div>
	<hr>
	
	