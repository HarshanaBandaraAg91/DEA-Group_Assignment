<%-- 
    Document   : signup
    Created on : Apr 20, 2024, 9:02:06 AM
    Author     : hasit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
    </head>
    <body>
        <%@include file = "navbar.html" %>
<<<<<<< Updated upstream
        <h1>Hello World!</h1>
=======
            
        <div class="container">
            <form action="LoginServlet" method="POST">
                
                <h2>Sign Up</h2>
                
                <input class="textf" type="text" placeholder="First Name">
                <input class="textf"  type="text" placeholder="Last Name">
                <input class="textf" type="email" placeholder="Email Address">
                <input class="textf" type="text" placeholder="Mobile number">
                <input class="textf"  type="password" placeholder="Password">
                
            
                            
                <input type="submit" class="btn" value="Login" >
                <div class="register">
                        Have an account? <a href="#">Log In</a>
                </div>
            </form>
        </div>
>>>>>>> Stashed changes
    </body>
</html>
