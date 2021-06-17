<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
