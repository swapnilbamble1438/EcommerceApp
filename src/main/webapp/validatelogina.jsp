<%@page import="java.sql.*,java.io.*,java.text.*,java.util.*" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href = "images/bootstrap.css">

<link rel="stylesheet" href="Css/w3.css">
<link rel="stylesheet" href="Css/font.css">

<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
</style>
</head>
<body>
<%
String Name = request.getParameter("Username");
String 	A = null;
if(request.getCookies()!=null)
{
	Cookie[]rc =request.getCookies();
	int flag=0;
	for(int i=0;i<rc.length;i++)
	{
		if(rc[i].getName().equals("tname")==true)
		{
			flag=1;
		A = rc[i].getValue().toString();
		}
	}
	if(flag!=1)
	{
		response.sendRedirect("adminlogin.jsp");
	}
}

%>

</body>
</html>