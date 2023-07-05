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
	margin-right: 260px;
	
	}
    
    .b{
	margin-right: 245px;
	
	}

	 .d{
	margin-right: 110px;
	
	}
</style>
</head>
<body>
<form method= "post" action = "checkcustomer">

<%@ include file = "navbar.jsp" %>
<% String Total4 = request.getParameter("Total"); %>
	
	<input type = "hidden" name = "Total" value =<%=Total4 %> >
	
	
	<% String CusName4 = request.getParameter("CusName"); %>
	
	<input type = "hidden" name = "CusName" value =<%=CusName4 %> >
	
<%
String cregg = null;
String fail = null;
	String msg = null;
	Cookie[] cookies = request.getCookies();

    for(int i = 0; i < cookies.length; i++) 
    {
        if (cookies[i].getName().equals("cname")) 
        {
         cookies[i].setMaxAge(0);
        response.addCookie(cookies[i]);
        msg = "You are logout successfully....";
	}
        
        if (cookies[i].getName().equals("un")) 
    	{
            cookies[i].setMaxAge(0);
            response.addCookie(cookies[i]);
            fail = "Email Id or Password is wrong.";
    	} 
       
        
        if (cookies[i].getName().equals("creg")) 
    	{
            cookies[i].setMaxAge(0);
            response.addCookie(cookies[i]);
            cregg = "Customer Successfully Registered.<br> Now please try to login.";
    	} 
       
}
	%>
		<center>
				<div style="background-color: #ebe9eb">
	<br>
	<h1>Customer Login</h1>
	<br>
	</div>
	<br>
	      
            <div class = "container border" style="background-color:white">
                <br>
                
                <div class = "row" style="justify-content: center">

                        <div class = "col-xl-2 col-lg-1 col-md-1" style="background-color:white">
                            <br>
                            <center>
                                <img src="images/loginimg.png" alt=Feedback height="350px">   
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
	<%if(msg != null)
		out.println("<b style='color: firebrick'>" + msg +  "</b>");%>
	<%if(fail != null)
		out.println("<b style='color: firebrick'>" + fail +  "</b>");%>		
			
	<%if(cregg != null)
		out.println("<b style='color: firebrick'>" + cregg +  "</b>");%>		
					
			
			<br>
           <h4 class = "a ws"><b> Email Id:</b> </h4>
           <h2><input type ="email" id = "x1" name ="Email_Id" class = "c" required></h2>
            
           <h4 class = "b ws"><b> Password: </b></h4>
           <h2><input type ="password" id = "x2" name ="Password" class = "c" required></h2>
            
            <br>
            <h3><b><input type ="submit" name="b1" value ="Login"></b></h3>
            
		
        </center>
        
        <br>
        <br>
        <a href = 'customer_reg.jsp?Total=<%=Total4 %>&CusName=<%=CusName4 %>' class ="d w3-bar-item w3-button" ><h4><b>Customer Registration</b></h4></a>
        
            
            
            
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