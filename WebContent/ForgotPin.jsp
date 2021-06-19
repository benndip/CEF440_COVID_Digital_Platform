<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style><%@include file="/ForgotPinStyles.css"%></style>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<div class="background">
    <div class="wrapper">
      <div class="container">
        <div class="header">
          <i class="star-1"></i>
          <i class="star-2"></i>
          <i class="star-3"></i>
          <i class="star-4"></i>
          <i class="star-5"></i>
          <i class="star-6"></i>
          <div class="avatar">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 85.8 111.7"><title>Layer 1</title><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><g id="Page-1"><g id="Artboard"><g id="boat"><path id="Fill-1" d="M65.9,111.7h0a10.13,10.13,0,0,1-7.5-3.2,5.73,5.73,0,0,0-8.2,0,10.5,10.5,0,0,1-15,0,5.83,5.83,0,0,0-4.1-1.7,5.35,5.35,0,0,0-4.1,1.7,10.5,10.5,0,0,1-15,0,5.83,5.83,0,0,0-4.1-1.7,5.35,5.35,0,0,0-4.1,1.7,2.23,2.23,0,0,1-3.2,0,2.57,2.57,0,0,1,0-3.3A10.29,10.29,0,0,1,8.1,102a10.13,10.13,0,0,1,7.5,3.2,5.73,5.73,0,0,0,8.2,0,10.29,10.29,0,0,1,7.5-3.2,10.13,10.13,0,0,1,7.5,3.2,5.73,5.73,0,0,0,8.2,0,10.29,10.29,0,0,1,7.5-3.2,10.13,10.13,0,0,1,7.5,3.2,5.83,5.83,0,0,0,4.1,1.7,5.35,5.35,0,0,0,4.1-1.7,10.5,10.5,0,0,1,15,0,2.57,2.57,0,0,1,0,3.3,2.23,2.23,0,0,1-3.2,0,5.73,5.73,0,0,0-8.2,0,11.93,11.93,0,0,1-7.9,3.2Z" style="fill:#fff"/><path id="Fill-2" d="M57.6,97.2H26.7A16.77,16.77,0,0,1,10.8,85.4L3.4,70c0-.2,0-.2-.2-.4a6.2,6.2,0,0,1,3.1-7.4L29.8,50.9a28.62,28.62,0,0,1,24.9,0L77.9,62.2A6.09,6.09,0,0,1,81,69.6c0,.2,0,.2-.2.4L73.3,85.4A16.06,16.06,0,0,1,57.6,97.2ZM7.7,68.1l7.5,15.2c0,.2,0,.2.2.4a11.76,11.76,0,0,0,11.3,8.6H57.8a11.53,11.53,0,0,0,11.3-8.6c0-.2,0-.2.2-.4l7.5-15.2a1.29,1.29,0,0,0-.8-1.5L52.5,55.3a23.73,23.73,0,0,0-20.8,0L8.3,66.7c-.3.3-.8.8-.6,1.4Z" style="fill:#fff"/><path id="Fill-3" d="M70.8,54.6a2.4,2.4,0,0,1-2.3-2.3V34.8a2.86,2.86,0,0,0-2.9-3H20.4a2.81,2.81,0,0,0-2.9,3V52.3a2.4,2.4,0,0,1-2.3,2.3,2.4,2.4,0,0,1-2.3-2.3V34.8A7.64,7.64,0,0,1,20.5,27H65.8a7.64,7.64,0,0,1,7.6,7.8V52.3a3,3,0,0,1-2.6,2.3Z" style="fill:#fff"/><path id="Fill-4" d="M60.1,41.7H24.2a2.3,2.3,0,1,1,0-4.6H60.1a2.4,2.4,0,0,1,2.3,2.3,2.47,2.47,0,0,1-2.3,2.3Z" style="fill:#fff"/><path id="Fill-5" d="M50.7,22.8a2.4,2.4,0,0,1-2.3-2.3V7.8a2.86,2.86,0,0,0-2.9-3H39.4a2.81,2.81,0,0,0-2.9,3V20.5a2.3,2.3,0,1,1-4.6,0V7.8A7.64,7.64,0,0,1,39.5,0h6.1a7.64,7.64,0,0,1,7.6,7.8V20.5a2.51,2.51,0,0,1-2.5,2.3Z" style="fill:#fff"/></g></g></g></g></g></svg>
          </div>
          <div class="title">
          	Welcome
          	<br>
           	Reset Your Pin  
          </div>
        </div>
        <form id="resetForm" action="./ForgotPinServlet" method="post">
        	<div class="content">
          <div class="email">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user-circle" class="svg-inline--fa fa-user-circle fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512"><path fill="currentColor" d="M248 8C111 8 0 119 0 256s111 248 248 248 248-111 248-248S385 8 248 8zm0 96c48.6 0 88 39.4 88 88s-39.4 88-88 88-88-39.4-88-88 39.4-88 88-88zm0 344c-58.7 0-111.3-26.6-146.5-68.2 18.8-35.4 55.6-59.8 98.5-59.8 2.4 0 4.8.4 7.1 1.1 13 4.2 26.6 6.9 40.9 6.9 14.3 0 28-2.7 40.9-6.9 2.3-.7 4.7-1.1 7.1-1.1 42.9 0 79.7 24.4 98.5 59.8C359.3 421.4 306.7 448 248 448z"></path></svg>
            <input placeholder="Email" name = "email">
          </div>
          <div class="email">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user-circle" class="svg-inline--fa fa-user-circle fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512"><path fill="currentColor" d="M248 8C111 8 0 119 0 256s111 248 248 248 248-111 248-248S385 8 248 8zm0 96c48.6 0 88 39.4 88 88s-39.4 88-88 88-88-39.4-88-88 39.4-88 88-88zm0 344c-58.7 0-111.3-26.6-146.5-68.2 18.8-35.4 55.6-59.8 98.5-59.8 2.4 0 4.8.4 7.1 1.1 13 4.2 26.6 6.9 40.9 6.9 14.3 0 28-2.7 40.9-6.9 2.3-.7 4.7-1.1 7.1-1.1 42.9 0 79.7 24.4 98.5 59.8C359.3 421.4 306.7 448 248 448z"></path></svg>
            <input placeholder="New Pin" name = "pin">
          </div>
          <div class="email">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user-circle" class="svg-inline--fa fa-user-circle fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512"><path fill="currentColor" d="M248 8C111 8 0 119 0 256s111 248 248 248 248-111 248-248S385 8 248 8zm0 96c48.6 0 88 39.4 88 88s-39.4 88-88 88-88-39.4-88-88 39.4-88 88-88zm0 344c-58.7 0-111.3-26.6-146.5-68.2 18.8-35.4 55.6-59.8 98.5-59.8 2.4 0 4.8.4 7.1 1.1 13 4.2 26.6 6.9 40.9 6.9 14.3 0 28-2.7 40.9-6.9 2.3-.7 4.7-1.1 7.1-1.1 42.9 0 79.7 24.4 98.5 59.8C359.3 421.4 306.7 448 248 448z"></path></svg>
            <input placeholder="Confirm Pin" type="passowrd" name = "cpin">
          </div>
          <div style="height: 15px"></div>
          <button href = "./updatedPIN.jsp">Update My PinCode</button>
        </div>
        </form>
        
        <div class="details-two">
        <div style="text-align: center"><h3>Note</h3></div>
        	Avoid touching surfaces, especially in public settings or health facilities, in case people infected with COVID-19 have touched them. Clean surfaces regularly with standard disinfectants.
        	 Frequently clean your hands with soap and water, or an alcohol-based hand rub.
        </div>
    </div>
  </div>
  </div>
</body>
  </html>