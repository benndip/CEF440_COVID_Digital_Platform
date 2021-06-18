<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
      body {
        overflow: hidden;
      }
      .main {
        background: url('myImg.jpg') no-repeat center center;
        width: 100vw;
        height: 100vh;
      }
      .sub-main {
        background-color: rgba(0, 0, 0, 0.616);
        /* background: url('myImg.jpg') no-repeat center center; */
        /* width: 5vw;
        height: 7h; */
        /* background-color: red; */
      }
      .main-div {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        height: 100vh;
      }
      .main-div div {
        margin: 2%;
      }
      button {
        width: 200%;
        font-size: 21px;
      }
      .sub-main {
        width: 100vw;
        height: 100vh;
        /* align-items: center; */
        justify-content: center;
        display: grid;
      }
      .box {
        background-color: rgb(255, 255, 255);
        width: 60vw;
        height: 70vh;
        margin-top: 8%;
        display: flex;
      }
      .box-1 {
        width: 30vw;
        height: 70vh;
        background-color: white;
      }
      .box-2 {
        width: 30vw;
        height: 70vh;
        background-color: rgb(247 240 240 / 64%);
      }
      .box-11 {
        /* background: rgba(255, 0, 0, 0.164); */
        width: 30vw;
        height: 70vh;
        align-items: center;
        display: flex;
        justify-content: center;

        /* box-shadow: 2px 5px 7px rgba(0, 0, 0, 0.548); */
      }
      button {
        width: 70%;
        padding: 88px;
        margin: 8px;
        margin-left: 15%;
        border-radius: 5px;
        background-color: white;
      }
      .btnss {
        margin-top: 27%;
        display: grid;
      }
      .name {
        display: flex;
        justify-content: center;
        align-items: center;
        padding-top: 25px;
      }
    </style>
</head>
<body>
<section class="main" >
<div class="sub-main">
        <div class="box">
          <div class="box-1">
            <div class="name">
              <h1 class="align-center name">Distribution Overview</h1>
            </div>
            <div>
              <div class="box-11">
                <img src="new.jpg" alt="" width="70%" height="60%" />
              </div>
            </div>
          </div>
          <div class="box-2">
            <div class="btnss">
              <div>
                <button class="btn btn-outline-danger btn-lg">
                  View Chart
                </button>
              </div>
              <div>
                <button class="btn btn-outline-danger btn-lg">View Map</button>
              </div>
              <div>
                <button class="btn btn-outline-danger btn-lg">
                  View Table
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
</section>
</body>
</html>