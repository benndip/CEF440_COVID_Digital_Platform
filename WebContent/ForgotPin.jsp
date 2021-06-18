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
	        <h1>Enter your  Email address to give your new PIN CODE</h1><br>
	           Enter Email: <input type = "text" name= "email"><br>
	           New_PIN_Code: <input type = "text" name= "pin" value = ""><br>
	           Confirm_PIN_Code: <input type = "text" name= "cpin" value = ><br>
	           <input type = "submit" value = "Click"> 
	           
	        </form>
	        </div>
    
</body>
</html>