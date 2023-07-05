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
	margin-right: 285px;
	
	}
    
    .b{
	margin-right: 265px;
	}
	
	    .e{
	margin-right: 225px;
	}
	
	
	    .d{
	margin-right: 250px;
	}
	
	
</style>
</head>
<body>
	
<form method= "post" action = "addContactusc">
<%@ include file = "customer_navbar.jsp" %>
	
			<center>
					<div style="background-color: #ebe9eb">
	<br>
	<h1>Contact Us</h1>
	<br>
	</div>
	<br>
	
	    
            <div class = "container border" style="background-color:white">
                <br>
                
                <div class = "row" style="justify-content: center">

                        <div class = "col-xl-2 col-lg-1 col-md-1" style="background-color:white">
                            <br>
                            <center>
                                <img src="images/conimg.jpg" alt=Picture height="450px">   
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
			
			
			
			
			<h4 class = "a ws"><b>Name : </b></h4>
            <h2><input type ="text"  name ="Name"  class = "c" required></h2>
            
            <h4 class = "b ws"><b>Email Id : </b></h4>
            <h2><input type ="email"  name ="Email_Id" class = "c" required></h2>
            
            <h4 class = "e ws"><b>Contact No. : </b></h4>
            <h2><input type ="number"  name ="Contact_No" class = "c" required></h2>
            
            <h4 class = "d ws"><b>Message : </b></h4>
            <h2><textarea rows="5" name = "Message"></textarea><br></h2>
            <br>
	
			
		            <h3><b><input type ="submit" name="b1" value ="Submit"></b></h3>
		
		
		  </center> 
                            <br>
                            <br>                        
                        </div>
                    
                </div>    
                <br>
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