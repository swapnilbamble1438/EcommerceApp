<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href = "images/bootstrap.css">

<link rel="stylesheet" href="Css/w3.css">
<link rel="stylesheet" href="Css/abc.css">
<link rel="stylesheet" href="Css/font.css">
<link rel="stylesheet" href="Css/whitespace.css">

<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}

.a{
	margin-right: 185px;
	
	}
    
    .b{
	margin-right: 260px;
	
	}
    
    .z{
	margin-right: 300px;
	
	}
    
    .d{
	margin-right: 290px;
	
	}
    
    .e{
	margin-right: 270px;
	
	}
    
    .f{
	margin-right: 270px;
	
	}
    


</style>

</head>


<body>
<form method= "post" action = "ShippingAddress2">
	<%@ include file = "customer_navbar.jsp"%>
	

<center>


	<div style="background-color: #ebe9eb">	
	<br>
	<h1>Shipping Address</h1>
	<br>
	</div>
	
	<br>
	
	
	
	<% String Total = request.getParameter("Total"); %>
	
	<input type = "hidden" name = "Total" value =<%=Total %> >
	
	
	
	<% String CusName = request.getParameter("CusName"); %>
	
	<input type = "hidden" name = "CusName" value =<%=CusName %> >
	
	
	
	
	
	
	     
            <div class = "container border" style="background-color:white">
                <br>
                
                <div class = "row" style="justify-content: center">

                        <div class = "col-xl-2 col-lg-1 col-md-1" style="background-color:white">
                            <br>
                            <center>
                                <img src="images/shipimg.png" alt=Feedback height="400px" class= "imgh">   
                            </center><br>

                        </div>
                        <br>
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;

                        <div class = "col-xl-2 col-lg-1 col-md-1" style="background-color: white">
                            <center> 
	
	<br>
<h4 class = "a ws"><b>Customer Name:</b> </h4>
<h2><input type ="text"  value ="<%= N%>" class="c" disabled selected required></h2>
<h2><input type ="hidden"  name = "CName"  value ="<%= N%>" class="c" required></h2>

<h4 class = "b ws"><b>Address :</b></h4>
<h2><input type ="text"  name = "Address"  class="c"  required></h2>

<h4 class = "z ws"><b>City: </b></h4>
<h2><input type ="text"  name = "City"  class="c"  required></h2>

<h4 class = "d ws"><b>State: </b></h4>
<h2><input type ="text"  name = "State"  class="c"  required></h2>

<h4 class = "e ws"><b>Country: </b></h4>
<h2><input type ="text" name = "Country"  class="c"  required></h2>

<h4 class ="f ws" ><b>Pincode: </b></h4>
<h2><input type ="number"  name = "Pincode"  class="c"  required></h2>


<br>



<br>
<b class = "ws"><input type = "submit" value= "Cash on Delivery" name = "cash"> &ensp;
<input type = "submit" value= "Online Payment" name = "online"> </b>


    </center> 
                            <br>
                            <br>                        
                        </div>
                    
                </div>    
                <br>
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