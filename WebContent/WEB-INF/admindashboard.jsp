<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype htmL>
<style>
    div{display: inline-block; }
    .codvid{ display: inline-block; position: relative; width:100%; height: auto; box-shadow: 4px 4px black;  background-color: grey; border-radius: 5px; overflow: hidden;}
    .codvid1 {overflow: hidden; display: inline-block; width:98%; height: auto; box-shadow: 4px 4px black;  background-color: grey; border-radius: 5px; height: auto; margin: 1%; position: relative; overflow-x: auto;}
    .a1 { width:210px; height:50px; background-color: white; padding:5px; margin:5px; position: relative; overflow:hidden; font-style: italic; font-weight: bold; border-radius: 5px;}
    .a2 { width:445px; height:50px; background-color: white; padding:5px; margin:5px; position: relative; overflow:hidden; font-style: italic; font-weight: bold; border-radius: 5px; font-size: 27px; text-align: center;}

    table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {  
  border: 1px solid #dddddd;
  text-align: left;
  padding: 15px;
}

tr:nth-child(even) {
  background-color: grey;
  color:white;
}

tr:nth-child(odd) {
  background-color: #dddddd;
}



    
</style>
<br>
<p style="font-weight: bold; font-size:30px;" align="center">COVID-19 ADMIN DASHBOARD</p>

<div class="codvid">
    <div class="a2">covid-19 patterns and trends</div>

    <div class="a1">Total confirmed cases<br>
    <p style="color:red;">873</p></div>
    <div class="a1">Total recoveries<br>
        <p style="color:red;">602</p></div>

    <div class="a1">
    Total deaths<br>
    <p style="color:red;">96</p></div>

    <div class="a1">
        Total Active Cases<br>
        <p style="color:red;">175</p></div>

    <div class="a1">
        Town with the highest deaths<br>
        <p style="color:red;">MAROUA, 27 Deaths</p></div>

<div class="a1">
    Town with least cases
    <br>
    <p style="color:red;">BAMENDA, 0 Cases</p></div>
    <div class="a1">
        Town with highest cases<br>
        <p style="color:red;">MAROUA, 250</p></div>
        <div class="a1">
            Town with highest active cases<br>
            <p style="color:red;">EBOLOWA, 78</p></div>
    </div>
<br><br>
<div class="codvid1">
   <table style="width:100%">
  <tr>
    <th>TOWN</th>
    <th>Number of cases</th>
    <th>Number of Recovery</th>
    <th>Number of Deaths</th>
    <th>Number of Active Cases</th>
  </tr>
  <tr>
    <td>BUEA</td>
    <td>50</td>
    <td>40</td>
    <td>5</td>
    <td>5</td>
  </tr>
  <tr>
    <td>DOUALA</td>
    <td>100</td>
    <td>80</td>
    <td>10</td>
    <td>10</td>
  </tr>
  <tr>
    <td>YAOUNDE</td>
    <td>30</td>
    <td>27</td>
    <td>1</td>
    <td>2</td>
  </tr>
  <tr>
    <td>NGOUNDERE</td>
    <td>150</td>
    <td>120</td>
    <td>16</td>
    <td>14</td>
  </tr>
  <tr>
    <td>BAMENDA</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
  </tr>

  <tr>
    <td>BERTOUA</td>
    <td>70</td>
    <td>40</td>
    <td>5</td>
    <td>35</td>
  </tr>

  <tr>
    <td>MAROUA</td>
    <td>250</td>
    <td>195</td>
    <td>27</td>
    <td>28</td>
    
  </tr>

  <tr>
    <td>EBOLOWA</td>
    <td>143</td>
    <td>40</td>
    <td>25</td>
    <td>78</td>
  </tr>

  <tr>
    <td>BAFOUSSAM</td>
    <td>47</td>
    <td>40</td>
    <td>5</td>
    <td>2</td>
  </tr>

  <tr>
    <td>GAROUA</td>
    <td>23</td>
    <td>20</td>
    <td>2</td>
    <td>1</td>
  </tr>

</table>
<br><br>
</div>

</htmL>































































