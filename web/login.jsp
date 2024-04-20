<%-- 
    Document   : login
    Created on : Apr 20, 2024, 9:01:32 AM
    Author     : hasit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    
    <style>
        
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif; /* Replace with the exact font */
        }
        .container {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background: #fff; /* Replace with the exact background color */
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            width: 300px;
            text-align: center;
        }
        .container form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .forgot-password {
            align-self: flex-end;
            margin-bottom: 10px;
        }
        .forgot-password a {
            color: greenyellow; /* Replace with the exact link color */
            text-decoration: none;
        }
        h2 {
            color: #333; /* Replace with the exact color */
        }
        .textf{
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid green; /* Replace with the exact border color */
            box-sizing: border-box;
        }
        .btn {
            background-color: #4CAF50; /* Replace with the exact button color */
            color: white;
            padding: 10px 20px;
            margin: 10px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        .btn:hover {
            opacity: 0.8;
        }
        .register {
            color: #555; /* Replace with the exact color */
        }
        .register a {
            color: #007bff; /* Replace with the exact link color */
            text-decoration: none;
        }
    </style>

    </head>
    
    <body>
        <%@include file = "navbar.html" %>
            
        <div class="container">
            <form action="LoginServlet" method="POST">
                
                <h2>Log In</h2>
                
                <input class="textf" type="text" placeholder="Email or mobile number">
                <input class="textf"  type="password" placeholder="Password">
            
                <div class="forgot-password">
                    <a href="#">forget password?</a>
                </div>
            
                <input type="submit" class="btn" value="Login" >
                <div class="register">
                        Don't have an account? <a href="#">Register</a>
                </div>
            </form>
        </div>
    </body>
    
</html>

