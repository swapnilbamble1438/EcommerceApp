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
	margin-right: 200px;
	
	}
    
    .b{
	margin-right: 205px;
	
	}
	
	.e{
	margin-right: 215px;
	
	}
    
    .d{
	margin-right: 185px;
	
	}
</style>
</head>


<body>
		
		<form method= "post" action = "addcustomer" enctype="multipart/form-data" >
			<%@ include file = "navbar.jsp" %>
			
			<% String Total5 = request.getParameter("Total"); %>
	
	<input type = "hidden" name = "Total" value =<%=Total5 %> >
	
	
	<% String CusName5 = request.getParameter("CusName"); %>
	
	<input type = "hidden" name = "CusName" value =<%=CusName5 %> >
	
			
			<div align = "center">
			<div style="background-color: #ebe9eb">
	<br>
	<h1>Customer Registration</h1>
	<br>
	</div>
	<br>
	<div class = "container border" style="background-color:white">
                <br>
	
	<div class = "row" style="justify-content: center">

                        <div class = "col-xl-2 col-lg-1 col-md-1" style="background-color:white">
                            <br>
                            <center>
                                <img src="images/regimg.png" alt=Picture height="400px">   
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
	
	
	
	
	
			<br>
            <h4 class = "a ws"><b>Set Username : </b></h4>
            <h2><input type ="text"  name ="Username"  class = "c" required></h2>
            
            <h4 class = "b ws"><b>Set Password : </b></h4>
            <h2><input type ="password"  name ="Password" class = "c" required></h2>
            
            <h4 class = "e ws"><b>Set Email Id : </b></h4>
            <h2><input type ="email"  name ="Email_Id" class = "c" required></h2>
            
            <h4 class = "d ws"><b>Set Contact No : </b></h4>
            <h2><input type ="number"  name ="Contact_No" class = "c" required></h2>
            <br>
            
            <h3><b><input type ="submit" name="b1" value ="Register"></b></h3>
          
            
            
            
            </center> 
                            <br>
                            <br>                        
                        </div>
                    
                </div>    
                <br>
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