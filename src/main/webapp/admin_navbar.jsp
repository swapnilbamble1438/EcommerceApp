	<%@ include file="validatelogina.jsp" %>
	
	<%@ include file="cartnullqty.jsp" %>
	
	<div style='margin-left:40% '>
	
	<b style='color: firebrick'>Welcome <%= A%> </b> 
	
<b>	<a href="cartnulla.jsp" class="w3-bar-item w3-button" ><img src = images/cart.png height=40px alt=Cart></a>

	<b style="position: relative;
  top: 16px;
  right: 37px;"><span style="height: 25px;
  width: 25px;
  background-color: red;
  border-radius: 50%;
  display: inline-block"><b style="color:white"><center><%=tqty %></center></b></span></b>
	</b>	
	
	<a href="addproduct.jsp" class="w3-bar-item w3-button"  ><b>Add Product</b></a>
	
	<a href = "managecustomers.jsp" class="w3-bar-item w3-button" ><b>Manage Customers</b></a>
	
	<a href = "managetables.jsp" class="w3-bar-item w3-button" ><b>Manage Tables</b></a>
	
	
	<a href="adminlogin.jsp" class="w3-bar-item w3-button"  ><b>Admin Logout</b></a>&ensp;
	
	</div>
	<center>
	<b class="w3-wide" style="width:250px"> <h3><b>Online Electronic Shopping</b></h3></b>
	
	<div class=" w3-large w3-text-grey" style="font-weight:bold">
	
	<a href="adminhome.jsp" class="w3-bar-item w3-button"  >Admin Home</a>&ensp;
	
	<a href="categorya.jsp" class="w3-bar-item w3-button"  >View Category</a>&ensp;
	
	<a href="tva.jsp" class="w3-bar-item w3-button">Tv</a>&ensp;
	<a href="laptopa.jsp" class="w3-bar-item w3-button">Laptop</a>&ensp;
	<a href="mobilea.jsp" class="w3-bar-item w3-button">Mobile</a>&ensp;
	<a href="watcha.jsp" class="w3-bar-item w3-button">Watch</a>&ensp;
	
	<a href="viewproducta.jsp" class="w3-bar-item w3-button"  >View All Product</a>&ensp;
	
	<a href="aboutusa.jsp" class="w3-bar-item w3-button"  >About Us</a>&ensp;
	
	</div>
	<hr>

	