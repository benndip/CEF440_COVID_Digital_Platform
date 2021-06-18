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
	                 <a href="http://WWW.Xadmin.net" class="navbar-brand">Welcome To Covid Assistance</a></div>
	            <ul class="navbar-nav">
	            
	               <li><a href="<%=request.getContextPath()%>/list"
	                     class="nav-link">Users</a>             
	               
	               </li>            
	            
	            </ul>
	            </nav>
    </header>
	<br>
	<div class="container col-md-5">
	  <div class="card">
	      <div class="card-body">
	           <c:if test="${user != null}">
	                   <form action="update" method="post">	    
	           </c:if>  
	           <c:if test="${user == null}">
	                   <form action="insert" method="post">	
	           </c:if>
	           
	           <caption>
	                <h2>	  
	                 <c:if test="${user != null}">
	                     Edit User
	                </c:if>                   
	                     <c:if test="${user == null}">
	                     Add New User
	                </c:if>
	                </h2>
	            </caption>
	            
	            <c:if test="${user != null}">
	                <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
	            </c:if>
	            
	            
	            
	             <table>
     
   
	            <fieldset class="form-group">
	                <label>User Name</label> <input type="text"
	                 value="${user.name }" class="form-control"
                    name="name" required="required">                  
	            
	            </fieldset>
	            
	            <fieldset class="form-group">
	               <label>User Email</label> <input type="text"
	                   value="${user.email }" class="form-control"
	                   name="email">
	            </fieldset>
	            
	             <fieldset class="form-group">
	               <label>Phone</label> <input type="text"
	                   value="${user.phone }" class="form-control"
	                   name="phone">
	            </fieldset>
	            
	               <fieldset class="form-group">
	               <label>Date of Birth</label> <input type="text"
	                   value="${user.dob}" class="form-control"
	                   name="dob">
	            </fieldset>
	            
	              <fieldset class="form-group">
	               <label>Password</label> <input type="password"
	                   value="${user.password}" class="form-control"
	                   name="password">
	            </fieldset>
	            
	             <fieldset class="form-group">
	               <label>Family Name</label> <input type="text"
	                   value="${user.family}" class="form-control"
	                   name="family">
	            </fieldset>
	            
	            
     
             <fieldset class="form-group">
	               <label>Region</label> <input type="text"
	                   value="${user.region}" class="form-control"
	                   name="region">
	            </fieldset>
							 <fieldset class="form-group">
	               <label>Division</label> <input type="text"
	                   value="${user.division}" class="form-control"
	                   name="division">
	            </fieldset>
								 <fieldset class="form-group">
	               <label>subdivision</label> <input type="text"
	                   value="${user.subdivision}" class="form-control"
	                   name="subdivision">
	            </fieldset>
                                <fieldset class="form-group">
	               <label>Town</label> <input type="text"
	                   value="${user.town}" class="form-control"
	                   name="town">
	            </fieldset>
                                 <fieldset class="form-group">
	               <label>Quarter</label> <input type="text"
	                   value="${user.quarter}" class="form-control"
	                   name="quarter">
	            </fieldset>
      
     </table>
     
     
    

	
	            <button type="submit" class="btn btn-success">Save</button>
	            </form>
	        </div>
	       </div>	
	     </div>	
     </body>
</html>