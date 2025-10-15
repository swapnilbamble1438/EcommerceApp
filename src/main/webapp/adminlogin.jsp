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
<link rel="stylesheet" href="Css/spin.css">


<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
.a{
	margin-right: 240px;
	
	}
    
    .b{
	margin-right: 245px;
	
</style>

</head>
<body>
	
<form method= "post" action = "checkadmin">

	<%@ include file = "navbar.jsp" %>
	<%
	String fail = null;
	String msg = null;
	Cookie[] cookies = request.getCookies();

    for(int i = 0; i < cookies.length; i++) 
    	{
    if (cookies[i].getName().equals("tname")) 
    	{
            cookies[i].setMaxAge(0);
            response.addCookie(cookies[i]);
            msg = "You are logout successfully....";
    	}    
    
    if (cookies[i].getName().equals("un")) 
	{
        cookies[i].setMaxAge(0);
        response.addCookie(cookies[i]);
        fail = "Username or Password is wrong.";
	} 
    }

	%>
			<center>
					<div style="background-color: #ebe9eb">
	<br>
	<h1>Admin Login</h1>
	<br>
	</div>
	<br>
	
	
	
	 <div class = "container border" style="background-color:white">
                <br>
                
                <div class = "row" style="justify-content: center">

                        <div class = "col-xl-2 col-lg-1 col-md-1" style="background-color:white">
                            <br>
                            <center>
                                <img src="images/adminimg.png" alt=Picture height="350px" class="spinhov3D">   
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
		
		
		
		<%if(msg != null)
		out.println("<b style='color: firebrick'>" + msg +  "</b>");%>
		
		<%if(fail != null)
		out.println("<b style='color: firebrick'>" + fail +  "</b>");%>
			<br>
           <h4 class = "a"><b> Username: </b></h4>
           <h2><input type ="text" id = "x1" name ="Username" class = "c" required></h2>
            
           <h4 class = "b"><b> Password: </b></h4>
           <h2><input type ="password" id = "x2" name ="Password" class = "c" required></h2>
            <br>
            
            <h3><b><input type ="submit" name="b1" value ="Login"></b></h3>
            
             </center> 
                            <br>
                            <br>                        
                        </div>
                    
                </div>    
                <br>
            </div>  
            
            
            
            
             <div style="color: firebrick"><h3><b>Try using</b></h3>
            <h4><b>Username: admin</b></h4>
            <h4><b>Password: admin</b></h4>
            
            
            
            
            
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