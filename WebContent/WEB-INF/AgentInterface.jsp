<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AGent Interface</title>
</head>
<body>

<div>
<h2>Agent Dashboard For Goods</h2>
<hr>
<form action="agent" method="get">
<input type="submit" value="View Goods">
</form>
<br>
<form action="agent" method="post" style="border:1px solid black; padding:5px; width:250px">
<label>Your ID</label><br>
<input type="text" name="distribution_agent_id"><br>
<label>Patient ID</label><br>
<input type="text" name="distribution_patient_id"><br>
<label>Product ID</label><br>
<input type="text" name="distribution_product_id">
<br>
<label> Region You Are</label><br>
<input type="text" name="distribution_region">
<br><label>Quantity To The Patient</label><br>
<input type="number" name="product_quantity">
<br><br>
<input type="submit" onclick="alert('Request successful !')" value="Validate">
</form>
</div>

</body>
</html>