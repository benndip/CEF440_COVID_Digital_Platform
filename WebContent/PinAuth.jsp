<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style><%@include file="/PinAuthStyles.css"%></style>
</head>
<body>
 <div class="login_form">
  <div class="details">
    <div class="welcome">Welcome</div>
    <br><div class="error_message">${message}</div>
            <br>
    <form action="login" method="post">
    <div class="wrap">
        <label>Beneficiary's name</label>
        <input type="text" class="input" name="beneficiary_name">
        </div>
        <div class="wrap">
        <label>Tel No.</label>
        <input type="text" class="input" name="beneficiary_tel">
        </div>
      <div class="wrap">
      
        <label>Enter pin</label>
        <input type="password" class="input" name="pin" id="pin" data-type="password">
      </div>
      <div class="wrap">
      <a href = "ForgotPin.jsp">
      <label><i>Forgot password?</i></label>
      </a>
        
      </div>
      <button type="submit" class="button">
        <h1 class="sign">Sign in!</h1>
      </button>
    </form>
   </div>
  <div class="details-two">
    <h1 class="back">Stay safe!</h1>
    <p class="log">If you don’t feel well, stay home. Even if you have mild symptoms like a headache and runny nose, stay in until you’re better. This lets doctors focus on people who are more seriously ill and protects health care workers and people you might meet along the way. You might hear this called self-quarantine. Try to stay in a separate room away from other people in your home. Use a separate bathroom if you can.</p>
    <h2 class="acc">Are you not yet registered?</h2>
    <a href="#" class="customer h3">Register now</a>
  </div>

</div>
</body>
</html>