<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Interface</title>
</head>
<body>

<div>
<h2>Admin Dashboard For Goods</h2>
<hr>
<form action="admin" method="get">
<input type="submit" value="View Goods">
</form>
<br>
<form action="admin/post_goods" method="get" style="border:1px solid black; padding:5px; width:250px">
<label>Goods Name</label><br>
<input type="text" name="goods_name"><br>
<label>Quantity</label><br>
<input type="number" name="product_quantity"><br>
<label>Admin ID</label><br>
<input type="text" name="admin_id">
<br><br>
<input type="submit" value="Add Goods">
</form>
</div>

</body>
</html>