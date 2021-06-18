<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="index.css">
</head>

<body>
    <div class="header">
        <div class="toolbar">
            <h2>Geolocation</h2>
        </div>
    </div>
    <div class="content">
        <div class="grid">
            <div class="row">
                <div class="col search-col">
                    <form action="/results" method="post" class="search-form">
                        <input placeholder="Enter Region" type="text">
                        <input placeholder="Enter Town" type="text">
                        <input placeholder="Enter Quarter" type="text">
                        <button>search</button>
                    </form>
                </div>
                <div class="col display-result">
                  <%@ page import="Geolocation.Family" %>
                   <%
                  
                      Family fam []= (Family[])request.getAttribute("ResultSet");
                   
                      String content="";
                   for(int i=0; i<fam.length; i++){
                	   
                	    content +="<div class=\"item\">"+"<div class=\"left\">"+
                       "<label class=\"fam-name\">"+fam[i].name+"</label>"+
                   "</div>"+
                   "<div class=\"right\">"+
                      " <label class=\"infected\">"+fam[i].infected+"</label>"+
                       "<label class=\"total\"> "+fam[i].total+"</label>"+
                  " </div>"+
               " </div>";
                   }
                   
                     out.print(content);
                   %>
                   
                </div>
            </div>
        </div>
    </div>
</body>

</html>