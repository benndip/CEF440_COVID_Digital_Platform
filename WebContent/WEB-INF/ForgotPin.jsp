<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="ForgotPinStyles.css" rel="stylesheet" type="text/css"></link>
</head>
<body class="section">
	<div class="box">
	
	    <div class="square" style="--i:0;"></div>
	    <div class="square" style="--i:1;"></div>
	    <div class="square" style="--i:2;"></div>
	    <div class="square" style="--i:3;"></div>
	    <div class="square" style="--i:4;"></div>
	    <div class="square" style="--i:5;"></div>
		<div class="container"></div>
	       
	         
	        <form id="resetForm" action="./ForgotPinServlet" method="post">
	        <h1>Enter your  Email address to give your new password</h1><br>
	           Enter Email: <input type = "text" name= "email"><br>
	           New_Password: <input type = "text" name= "pass"><br>
	           Confirm_Password: <input type = "text" name= "cpass"><br>
	           <input type = "submit" value = "Click"> 
	           
	        </form>
	        </div>
    
</body>
</html>