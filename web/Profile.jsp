<%-- 
    Document   : Profile
    Created on : Apr 27, 2024, 10:35:15 PM
    Author     : grhar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        
        form {
            text-align: center;
            margin-bottom: 20px;
        }
        .profile-info {
            margin-bottom: 20px;
        }
        .profile-info p {
            margin: 10px 0;
        }
    </style>
        
    </head>
    <body>
        
        
         <%
         if(session.getAttribute("username")==null)
         {
         response.sendRedirect("login.jsp"); 
         }
        


         %>

         
          <%@include file = "navbar.html" %>
         
        
              
         <div class="container">
        <h1>User Profile</h1>
         <div class="profile-info">
    <p><strong>First Name:</strong> ${sessionScope.f_name}</p>
    <p><strong>Last Name:</strong> ${sessionScope.l_name}</p>
    <p><strong>Email:</strong> ${sessionScope.e_address}</p>
    <p><strong>Phone Number:</strong> ${sessionScope.m_number}</p>
    <!-- Add more user information here -->
    </div>
    
     <form action="LogoutServlet">
            
         <input type="submit" value="LogOut"><br<br>
            <input type="submit" value="Start Shopping">
            
            
            
        </form>
    </div>
    
    
     <%@include file = "footer.html" %>
        
    </body>
</html>
