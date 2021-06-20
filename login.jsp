<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Covid Assistance</title>

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<link rel = "stylesheet"
    href = "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity ="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorign ="anonymous">
    
 <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    
    
    
    
    
</head>
<body>

       <header>
           <nav class="navbar navbar-expand-md navbar-dark" 
                style="background-color: blue">
                
                <div>
	                 <a href="http://WWW.Xadmin.net" class="navbar-brand">Welcome to Covid Assistance</a></div>
	            <ul class="navbar-nav">
	            
	               <li><a href="<%=request.getContextPath()%>/list"
	                     class="nav-link">Users</a>             
	               
	               </li>
	            
	            
	            </ul>
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
	                     
	                     <c:if test="${user == null}">
	                     Register
	                     </c:if>
	                </h2>
	            </caption>
	            
	            <c:if test="${user != null}">
	                <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
	            </c:if>
    
    


     <form action="Registration" method="post">
     <table>
     
   
	            <fieldset class="form-group">
	                <label>User Name</label> <input type="text"
	                 value="" class="form-control"
                    name="name" required="required">                  
	            
	            </fieldset>
	            
	            <fieldset class="form-group">
	               <label>User Email</label> <input type="text"
	                   value="" class="form-control"
	                   name="email">
	            </fieldset>
	            
	             <fieldset class="form-group">
	               <label>Phone</label> <input type="text"
	                   value="" class="form-control"
	                   name="phone">
	            </fieldset>
	            
	              <fieldset class="form-group">
	              
	                   
	                   
	     <div class="form-group"> <!-- Date input -->
        <label class="control-label" for="date">Date</label>
        <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>
      </div>
	                   
	                   
	                
	                   
	                   
	                   
	                   
	                   
	                   
	                   
	                   
	                   
	                   
	                   
	            </fieldset>
	              <fieldset class="form-group">
	               <label>Password</label> <input type="password"
	                   value="" class="form-control"
	                   name="password">
	            </fieldset>
	             <fieldset class="form-group">
	               <label>Family Name</label> <input type="text"
	                   value="" class="form-control"
	                   name="famname">
	            </fieldset>
	            
	            
     
      <div class="col-md-4">
		  <div class="form-group">
				<select class="form-control">
											<option>North West</option>
											<option>South West</option>
											<option>Litoral</option>
										</select>
										<span class="select-arrow"></span>
										<span class="form-label">Region</span>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<select class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
										</select>
										<span class="select-arrow"></span>
										<span class="form-label">Division</span>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<select class="form-control">
											<option>0</option>
											<option>1</option>
											<option>2</option>
										</select>
										<span class="select-arrow"></span>
										<span class="form-label">Subdivision</span>
									</div>
                                  </div>
                                <div class="col-md-4">
									<div class="form-group">
										<select class="form-control">
											<option>0</option>
											<option>1</option>
											<option>2</option>
										</select>
										<span class="select-arrow"></span>
										<span class="form-label">Town</span>
									</div>
                                  </div>
                                   <div class="col-md-4">
									<div class="form-group">
										<select class="form-control">
											<option>0</option>
											<option>1</option>
											<option>2</option>
										</select>
										<span class="select-arrow"></span>
										<span class="form-label">Quarter</span>
									</div>
                                  </div>
      
      
      
      
      
      
      
      
      
      
      
     <tr><td></td><td> <a href="registration.jsp" class="btn btn-outline-success" role="button" aria-pressed="true">Register Now</a></td></td></tr> 
      
      
      
      
      
      
      
      
      
      
     
     </table>
     
     </form>
     
    




<script>
    $(document).ready(function(){
      var date_input=$('input[name="date"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script>























</body>
</html>