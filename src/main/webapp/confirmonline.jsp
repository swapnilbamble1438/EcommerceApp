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
	margin-right: 140px;
	
	}
    
    .b{
	margin-right: 145px;
	
	}
    
    .z{
	margin-right: 300px;
	
	}
    
    .d{
	margin-right: 235px;
	
	}
    
    .e{
	margin-right: 235px;
	
	}
    
    .f{
	margin-right: 270px;
	
	}
	
	 .g{
	margin-right: 210px;
	
	}
    


</style>



</head>
<body>
<form method = "post" action = "confirmpayment.jsp">
	<%@ include file = "customer_navbar.jsp" %>
<center>
<%
String CName = request.getParameter("CName");
String CusName = request.getParameter("CusName");
String City = request.getParameter("City");
String Total = request.getParameter("Total"); 







 

%>
<input type = "hidden" name = "CName" value ="<%=CName %>" >
<input type = "hidden" name = "City" value ="<%=City %>" >
<input type = "hidden" name = "Total" value =<%=Total %> >
<input type = "hidden" name = "CusName" value =<%=CusName %> >




<div style="background-color: #ebe9eb">	
	<br>
	<h1>Payment Detils</h1>
	<br>
	</div>

<br>

<div class = "container border" style="background-color:white">
                <br>
                
                <div class = "row" style="justify-content: center">

                        <div class = "col-xl-2 col-lg-1 col-md-1" style="background-color:white">
                            <br>
                            <center>
                                <img src="images/payimg.jpg" alt=Feedback height="400px" class= "imgh">   
                            </center><br>

                        </div>
                        <br>
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
                        &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;

                        <div class = "col-xl-2 col-lg-1 col-md-1" style="background-color: white">
                            <center> 




<h3 class = "ws">Fill below details to proceed</h3>
<br>
<br>
<img src = "images/paymethod.png" height=100px width = 300px>
<br>


<h4 class = "a ws"><b>Name on Credit Card:</b></h4>
<h2><input type ="text"  class = "c"    required> </h2>

<h4><b class = "b ws">Credit Card Number: </b></h4>
<h2> <input type ="number"  class = "c"   required></h2>

<h4><b class = "d ws">Select Card:</b></h4>

	<select name="Credit Card Type"  class="c ws" required>
				<option value="" disabled selected>Select Card</option>
			    <option>Master Card</option>
			    <option>Visa Card</option>
			    <option>Discover</option>
			    <option>Maestro</option>
			    <option>American Express</option>
	</select> 


	<h4><b class = "e ws">Expiry Date:</b></h4>
	<div class = "cc1">
		<div class = "row ws">
			<div class = "col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6">
				<select name="Month" class="cc2" required>

							<option value="" disabled selected>Month</option>
						    <option>January</option>
						    <option>February</option>
						    <option>March</option>
						    <option>April</option>
						    <option>May</option>
						    <option>June</option>
						    <option>July</option>
						    <option>August</option>
						    <option>September</option>
						    <option>October</option>
						    <option>November</option>
						    <option>December</option>
				</select>
			</div>
			
			<div class = "col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6">
				<select name="Year" class="cc2" required>
							<option value="" disabled selected>Year</option>
							<% for(int i = 2015; i <= 2035; i ++)
							{%>
							    <option><%= i %></option>
							    <%} %>
				</select> 
			</div>
	
		</div>
	</div>


<h4><b class ="f ws">CVV No.:</b></h4>
<h2><input type ="number"  name = "cvvno"  class="c"  required></h2>


<h4><b class = "g ws">Amount Paid:</b></h4>
<h2><input type ="text"  value= "₹ <%=Total %>" class="c" disabled selected required></h2>








<br>
<br>
<br>
<h5><b class = "ws"><button style='border: solid 1px '><a href = "customerhome.jsp" style='text-decoration: none'>Cancel Payment</a></button> &ensp;
<input type = "submit" value= "Proceed" name = "online"> </b></h5>


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