<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>User Management Application</title>
<link rel = "stylesheet"
    href = "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity ="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorign ="anonymous">
</head>

<body>
    
      <header>
           <nav class="navbar navbar-expand-md navbar-dark" 
                style="background-color: blue">
                
             <div>
             
             <a href="http://www.Xadmin.net" class="navbar-brand"></a></div>
	            <ul class="navbar-nav">
	            
	               <li><a href="<%=request.getContextPath()%>/list"
	                     class="nav-link">Users List</a>             
	               
	               </li>           
	            
	            </ul>
	            </nav>
    </header>
	<br>
	
	<div class="row">
	 <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->
	 
	 <div class="container">
	   <h3 class="text-center"> My Profile</h3>
	   <hr>
	   <div class="container text-left">
	   
	   
	
	 </div>
	 <br>
	 <table class="table table-bordered">
	 <thead>
	      <tr>
	           <th>ID</th>
	           <th>Name</th>
	           <th>Email</th>
	           <th>Phone</th>
	           <th>Date of Birth</th>
	           <th>Password</th>
	           <th>Family</th>
	           <th>Region</th>
	           <th>Division</th>
	           <th>Subdivision</th>
	           <th>Town</th>
	           <th>Quarter</th>
	      </tr>
	 </thead>
	 <tbody>
	 
	 
	         <c:forEach var="user" items="${listUser }">
	         
	            <tr>
	              <td><c:out value="${user.id}"  /></td>
	              <td><c:out value="${user.name}"  /></td>
	              <td><c:out value="${user.email}"  /></td>
	              <td><c:out value="${user.phone}"  /></td>
	              <td><c:out value="${user.dob}"  /></td>
	              <td><c:out value="${user.password}"  /></td>
	              <td><c:out value="${user.family}"  /></td>
	              <td><c:out value="${user.region}"  /></td>
	              <td><c:out value="${user.division}"  /></td>
	              <td><c:out value="${user.subdivision}"  /></td>
	              <td><c:out value="${user.townl}"  /></td>
	              <td><c:out value="${user.quarter}"  /></td>
	              <td><a href="edit?id=<c:out value='${user.id}' />">Edit</a>
	              &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;<a>
	              href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
	            </tr>
	         </c:forEach>
	       	 
	 </tbody>   
	 
	 </table>
	 </div>
	 
	 
	 
	 
	 
	 
	 
	 
	 
</body>
</html>