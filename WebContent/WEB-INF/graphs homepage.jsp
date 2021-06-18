<%@page import="jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*"%>
<%@page import="fusioncharts.FusionCharts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>FusionCharts | Simple Chart Using Array</title>

<link href="../Styles/ChartSampleStyleSheet.css" rel="stylesheet" />
<script type="text/javascript" src="//cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>
<script type="text/javascript" src="//cdn.fusioncharts.com/fusioncharts/latest/themes/fusioncharts.theme.fusion.js"></script>

</head>
<body>
<h3>Simple Chart Using Array</h3>  
 <div id="chart"></div>
 
 <%	
Map<String, Integer> dataValuePair = new HashMap<String, Integer>();
String xVal, yVal;		

try {
	Class.forName("org.postgresql.Driver"); 
	Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5433/covid_db", "postgres", " ");
	Statement statement = connection.createStatement();
	ResultSet resultSet = statement.executeQuery("select * from regions");
	ResultSetMetaData rsmd = resultSet.getMetaData();
	
	while(resultSet.next()){
		xVal = resultSet.getString("regions_name");
		yVal = resultSet.getString("no_infected");
		dataValuePair.put(xVal, Integer.parseInt(yVal));
		}
    System.out.println("Connected to the PostgreSQL server successfully.");
    } catch (Exception e) {
      	System.out.println("Failed to connect to PostgreSQL server.");  
      	}  
 

</body>
</html>		
