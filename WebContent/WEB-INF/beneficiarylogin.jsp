<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>
        codeMap
        </title>
        <style>
        body{
            font-family: Arial, Herlvetica, sans-serif;
        }
        input[type=text],input[type=password]{
          width: 100%;
          padding: 12px 20px;
          margin: 8px 0;
          display: inline-block;
          border: 1px solid #ccc;
          box-sizing: border-box;  
        }
        button{
            background-color: rgb(45, 0, 128);
            color: rgb(233, 232, 231);
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%; 
        }
        button:hover{
            opacity: 0.8;
        }
        .imgcontainer{
            Text: align center;
            margin: 24px 0 12px 0;
            position: relative      
                    img.avatar{
            width: 100%;
            border-radius: 40%;
        }
    .modal{
        background-color: pink;
        overflow: auto;
        padding-top: 60px;
        width: 50;
        height: 100%;
        top: 0%
        left: 0%;
        x-index: 1;
        position: fixed;
    }
    .modal.content{
        background-color: white;
        margin: 5% auto 15% auto;
        border: 1px solid rgb(250, 243, 243);
        width:80%;
    }
    .container{
        padding: 16px;
    }

    span.psw{
        float: right;
        padding-top: 16px;
    }

        </style>
     </head>
     <body>
         <div class="modal">
        <form class="modal-content animate"> 
        <div class="container">
          <label>
            Username
          </label>
          <input type="text" placeholder="Username">
          <br>
          <label>
            password
          </label>
          <input type="password" placeholder="Password">
          <br />
        <input type = "checkbox"> <a>Remember me</a>
          <button>login</button>
           <labeL>
            <p><a href="forget Password">forget Password</a></p>
          </label>
          <label>
            <p>No account?<a href="Create account">Create account</a></p>
          </label>
        </div>
        </form>
    </div>
    </body>
</html> 