<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
    <head>
        <meta name="viewpiont"
        content="width=device-width,initial-scale=1">
        <style>
            .body{
                font-family: arial,Arial, Helvetica, sans-serif;
                margin: 0;
            }
            html{
                box-sizing:border-box;
            }
            *, *:before, *:after{
                box-sizing: inherit;
            }
            .column{
                float:left;
                width:33.3%;
                margin-bottom: 16px;
                padding:0 8px;
            }
            .card{
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                margin: 8px;
            }
            .help-section{
                padding: 50px;
                text-align: center;
                background-color: #474e5d;
                color: white;
            }
            .container{
                padding: 0 16px;
            }
            .container::after, .row::after{
                content: "";
                clear: both;
                display: table;
            }
            .tittle{
                color:grey;
            }
            .button{
                border: none;
                outline: 0;
                display: inline-block;
                padding: 8px;
                color:white;
                background-color: #000;
                text-align: center;
                cursor:pointer;
                width: 100%;
            }
            .button:hover{
                background-color: #555;
            }
            @media screen and ( max-width: 650px){
                .column{
                    width: 100%;
                    display: block;
                }
            }
    </style>
    </head>
    <body>
        <div class="help-section">
            <h1> Need help?</h1>
            <p>Welcome Agent!!... For effective 24/7 response </p>
            <p>contact:Agentsupport@gmail.com or Our team </p>
            <p>Get in touch with with our team for immediate assitance.</p>
            
            </div>
            <h2 style="text-align: center">Our Team</h2>
            <div class="row">
                <div class="column">
                    <div class="card">   
                        <img
                        src="kamtaDR.jpeg"
                        alt="Mike" style="width:100%">
                        <div class="container">   
                            <h2>Kamta Rawlings</h2>
                            <p class="tittle">Doctor</p>
                                <p> kamta has over 10years experience as a medical personnel,
                                    and has worked and helped "agents" all over cameroon.</p>
                            <p>kamtarawlings@gmail.com</p>
                            <p><button
                            class="button">contact</button></p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="column">
                <div class="card">   
                    <img
                    src="pic2.jpeg"
                    alt="Mike" style="width:100%">
                    <div class="container">   
                        <h2>Tse Blieden</h2>
                        <p class="tittle"> Member</p>
                        <p>With a passion to help her surrounding, Fru is devoted to save lives.</p>
                        <p>Fru@gmail.com</p>
                        <p><button
                        class="button">contact</button></p>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="column">
            <div class="card">   
                <img
                src="Cap.PNG"
                alt="dede" style="width:100%">
                <div class="container">   
                    <h2>Efendoa Deray</h2>
                    <p class="tittle">Member</p>
                    <p>After loosing her parents to coronavirus,Efendoa is very reliable 
                        and efficient in her job. </p>
                    <p>Efendoa@gmail.com</p>
                    <p><button
                    class="button">contact</button></p>
        </div>
    </div>
    </body>
</html>