<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="styles.css" rel="stylesheet" type="text/css"></link>
</head>
<body>
 <form action="/sessions/check-2fa" method="POST">
  <div>
    <label for="pin">Please enter user PIN:</label>
     <input type="password" name="pin" id="pin" inputmode="numeric" pattern="[0-9]*"/>
  </div>
  <button type="submit" value="Submit">Check PIN</button>
</form>
</body>
</html>