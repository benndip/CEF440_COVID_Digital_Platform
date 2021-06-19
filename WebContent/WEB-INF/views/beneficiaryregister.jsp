<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
  <h1>Covid gift Beneficiary supplementary information Form</h1>
  <form action="<%= request.getContextPath() %>/research" method="post">
   <table style="with: 80%">
    <tr>
     <td>First Name</td>
     <td><input type="text" name="firstName" /></td>
    </tr>
    <tr>
     <td>Last Name</td>
     <td><input type="text" name="lastName" /></td>
    </tr>
    <tr>
     <td>How many are you in your family</td>
     <td><input type="text" name="familysize" /></td>
    </tr>
    <tr>
     <td>Address</td>
     <td><input type="text" name="address" /></td>
    </tr>
    <tr>
     <td>contact</td>
     <td><input type="text" name="contact" /></td>
    </tr>
    <tr>
     <td>In which town are you living?</td>
     <td><input type="text" name="town" /></td>
    </tr>
    <tr>
     <td>What is your profession?</td>
     <td><input type="text" name="profession" /></td>
    </tr>
   </table>
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>