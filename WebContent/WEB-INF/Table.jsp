<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <% String hidden =
request.getParameter("distributionItems"); %>
<!DOCTYPE html>
<html>
  <head>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>
  </head>
  <body>
    <div class="w-100 mt-3 d-flex justify-content-center">
      <table class="table w-50">
        <thead class="thead-dark">
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Region</th>
            <th scope="col">People</th>
            <th scope="col">Infected</th>
            <th scope="col">Handle</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <th scope="row">South-West</th>
            <td>12</td>
            <td>20</td>
            <td>3</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <th>South</th>
            <td>12</td>
            <td>3</td>
            <td>5</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <th>Litoral</th>
            <td>34</td>
            <td>23</td>
            <td>8</td>
          </tr>
          <tr>
            <th scope="row">4</th>
            <th>West</th>
            <td>119</td>
            <td>19</td>
            <td>10</td>
          </tr>
          <tr>
            <th scope="row">5</th>
            <th>East</th>
            <td>100</td>
            <td>23</td>
            <td>2</td>
          </tr>
          <tr>
            <th scope="row">6</th>
            <th>North</th>
            <td>123</td>
            <td>45</td>
            <td>12</td>
          </tr>
          <tr>
            <th scope="row">7</th>
            <th>Adamawa</th>
            <td>10</td>
            <td>5</td>
            <td>2</td>
          </tr>
          <tr>
            <th scope="row">8</th>
            <th>Far-North</th>
            <td>15</td>
            <td>5</td>
            <td>2</td>
          </tr>
          <tr>
            <th scope="row">9</th>
            <th>Center</th>
            <td>45</td>
            <td>23</td>
            <td>12</td>
          </tr>
          <tr>
            <th scope="row">10</th>
            <th>Far-North</th>
            <td>45</td>
            <td>23</td>
            <td>12</td>
          </tr>
        </tbody>
      </table>
    </div>
  </body>
</html>
