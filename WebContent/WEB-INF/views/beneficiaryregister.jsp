<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<<<<<<< HEAD
 <div align="left">
  <h1>COVID gift Beneficiary supplementary information Form</h1>
  <form action="<%= request.getContextPath() %>/research" method="post">
   <!--<table style="with: 80%">-->
   <p>Are they any COVID patients in your environment?</p>
     <div>
  <label>
    <input type="radio" name="covidcounter">
    Yes
  </label>
  <label>
    <input type="radio" name="covidcounter">
    No
  </label>
</div>
<p>Are they any AIDS patients in your environment?</p>
     <div>
  <label>
    <input type="radio" name="aidscounter">
    Yes
  </label>
  <label>
    <input type="radio" name="aidscounter">
    No
  </label>
</div>
<p>Are they any High Blood Pressure patients in your environment?</p>
     <div>
  <label>
    <input type="radio" name="hpbcounter">
    Yes
  </label>
  <label>
    <input type="radio" name="hpbcounter">
    No
  </label>
</div>
<p>Are they any Diabetes patients in your environment?</p>
     <div>
  <label>
    <input type="radio" name="diabetescounter">
    Yes
  </label>
  <label>
    <input type="radio" name="diabetescounter">
    No
  </label>
</div>
<p>Are they any Cardiac patients in your environment?</p>
     <div>
  <label>
    <input type="radio" name="cardiacdiseasecounter">
    Yes
  </label>
  <label>
    <input type="radio" name="cardiacdiseasecounter">
    No
  </label>
</div>
<p>Are they any Cancer patients in your environment?</p>
     <div>
  <label>
    <input type="radio" name="cancercounter">
    Yes
  </label>
  <label>
    <input type="radio" name="cancercounter">
    No
  </label>
</div>
<p>Are they any patients with Lung Disease in your environment?</p>
     <div>
  <label>
    <input type="radio" name="lungdiseasecounter">
    Yes
  </label>
  <label>
    <input type="radio" name="lungdiseasecounter">
    No
  </label>
</div>
<p>Are they any Asthmatic patients in your environment?</p>
     <div>
  <label>
    <input type="radio" name="asthmacounter">
    Yes
  </label>
  <label>
    <input type="radio" name="asthmacounter">
    No
  </label>
</div>
<input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>
=======
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
>>>>>>> e45a95d67000a9f1237af67847f41a990eeb1446
