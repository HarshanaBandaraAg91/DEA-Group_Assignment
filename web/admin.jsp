<%-- 
    Document   : admin
    Created on : Apr 26, 2024, 3:02:30 PM
    Author     : grhar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file = "navbar.html" %>
         
         
         <%
         if(session.getAttribute("adminusername")==null)
         {
         response.sendRedirect("login.jsp"); 
         }
         %>
         
        <br><br><br><br><br><br><br><br><br><br><h1>This is admin page</h1><br><br><br><br><br><br><br><br><br><h1>Hello World!</h1>
    
        
        
        
        
        
        <%@include file = "footer.html" %>
    
    
    
    
    
    </body>
</html>
