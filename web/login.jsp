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
        
        body,html {
           
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif; 
        }
        
        .bg-image {
        height: 100vh;
        background-image: url('img/bg_img.jpg');
        background-size: cover;
        background-position: center;
        position: relative;
        filter: blur(5px);
        opacity: 0.3;
        
    }
        
        .container {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            border-radius: 10px;
            background: #fff; 
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            width: 300px;
            text-align: center;
        }
        .container form {
            display: flex;
            flex-direction: column;
            align-items: center;
       animation: fadeIn 1s ease;   
        }
        
        @keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
    }
        .forgot-password {
            align-self: flex-end;
            margin-bottom: 10px;
        }
        .forgot-password a {
            color: greenyellow; 
            text-decoration: none;
        }
        h2 {
            color: #333; 
        }
        .textf{
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid green; 
            box-sizing: border-box;
        }
        .btn {
            background-color: #4CAF50; 
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
            color: #555; 
        }
        .register a {
            color: #007bff; 
            text-decoration: none;
        }
    </style>

    </head>
    
    <body>
        
        <%@include file = "navbar.html" %>
        
         
        <div class="bg-image"></div>  
        <div class="container">
            <form action="LoginServlet" method="POST">
                
                <h2>Log In</h2>
                
                <input class="textf" type="text" placeholder="Email Address" name="username">
                <input class="textf"  type="password" placeholder="Password" name="password">
            
                <div class="forgot-password">
                    <a href="ABC1234.jsp">forget password?</a>
                </div>
            
                <input type="submit" class="btn" value="Login" >
                <div class="register">
                        Don't have an account? <a href="signup.jsp">Register</a>
                </div>
            </form>
        </div>
        
    </body>
    
</html>

