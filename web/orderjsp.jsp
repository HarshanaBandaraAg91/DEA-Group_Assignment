<%-- 
    Document   : orderjsp
    Created on : Apr 29, 2024, 7:56:21 AM
    Author     : Kavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
       <title>order place page </title>
       <link href="css/ordercss.css" rel="stylesheet" type="text/css"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="ordercss.css"/>
     </head>
    <body>
        <div class="container">
        <h2 class="form-title">NSBM GIFT SHOP</h2>
        <form action="OrderServlet" method="POST">
            <div class="main-user-info">
                <div class="user-input-box">
                    <label for="first name">First Name</label>
                    <input type="text"
                           name="fname" 
                           placeholder="enter your first name here">
                </div>
                 <div class="user-input-box">
                    <label for="last name">Last Name</label>
                   <input type="text"
                          name="lname" 
                          placeholder="enter your last name here">
                 </div>
                  
                 <div class="user-input-box">
                   <label for="address">Address</label>
                   <input type="text"
                          name="add" 
                          placeholder="enter your addresshere">
                 </div>
                
                 <div class="user-input-box">
                   <label for="distict">Distict</label>
                   <input type="text"
                          name="disk" 
                          placeholder="enter your distict here">
                 </div>
                
                  <div class="user-input-box">
                   <label for="city">City</label>
                   <input type="text"
                          name="cit" 
                          placeholder="enter your city here">
                 </div>
                
             <div class="user-input-box">
                   <label for="mobile number">Mobile Number</label>
                   <input type="text"
                          name="mno" 
                          placeholder="enter your mobile numner here">
                 </div>
                
                 <div class="user-input-box">
                   <label for="email">Email</label>
                   <input type="text"
                          name="em" 
                          placeholder="enter a valid email here">
                 </div>
            </div>
            
            <div class="form-submit-button">
                    <input type="submit" value="CHECKOUT">
            
                
        
       
        
       </form>
        </div>
        
            
    </body>
   
</html>
