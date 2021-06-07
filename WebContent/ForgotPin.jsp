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
	<div class="container">
		<div class="class="section"">
        <h2>Reset Your Password</h2>
        <p>
        Please enter your login email, we'll send a new random password to your inbox:
        </p>
         
        <form id="resetForm" action="reset_password" method="post">
            <table>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="email" id="email" size="20"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <button type="submit">Send me new password</button>
                    </td>
                </tr>    
            </table>
        </form>
        </div>
    </div>
</body>
</html>