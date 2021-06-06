<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action="/sessions/check-2fa" method="POST">
  <div>
    <label for="token">Please enter the code you were sent:</label>
    <input type="text" name="token" id="token" />
  </div>
  <button type="submit">Check token</button>
</form>
</body>
</html>