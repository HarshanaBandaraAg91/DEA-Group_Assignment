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
       <link href="CSS/ordercss.css" rel="stylesheet" type="text/css"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="ordercss.css"/>
     </head>
    <body>
        <div class="container">
            <h2 class="form-title"><b>NSBM GIFT SHOP</b></h2>
        
        
        <form action="OrderServlet" method="POST">
            <div class="main-user-info">
                <div class="user-input-box">
                    <label for="first name"><b>First Name</b></label>
                    <input type="text"
                           name="fname" 
                           placeholder="enter your first name here">
                </div>
                 <div class="user-input-box">
                     <label for="last name"><b>Last Name</b></label>
                   <input type="text"
                          name="lname" 
                          placeholder="enter your last name here">
                 </div>
                  
                 <div class="user-input-box">
                     <label for="address"><b>Address</b></label>
                   <input type="text"
                          name="add" 
                          placeholder="enter your address here">
                 </div>
                
                 <div class="user-input-box">
                     <label for="distict"><b>Distict</b></label>
                   <input type="text"
                          name="disk" 
                          placeholder="enter your distict here">
                 </div>
                
                  <div class="user-input-box">
                      <label for="city"><b>City</b></label>
                   <input type="text"
                          name="cit" 
                          placeholder="enter your city here">
                 </div>
                
             <div class="user-input-box">
                   <label for="mobile number"><b>Mobile Number</b></label>
                   <input type="text"
                          name="mno" 
                          placeholder="enter your mobile number here">
                 </div>
                
                 <div class="user-input-box">
                     <label for="email"><b>Email<b></label>
                   <input type="text"
                          name="em" 
                          placeholder="enter a valid email here">
                 </div>
            </div>
            <div class="payment-method-selection">
                <span class="payment-title"> <b>Add Payment Method</b></span>
                <div class="payment-category">
                    <input type="radio" name="payment" id="cod">
                    <label for="cod">COD</label>
                     <input type="radio" name="payment" id="other">
                    <label for="other">Other</label>
                </div>
            </div>
           
            <div class="form-submit-button">
                    <input type="submit" value="Continue to payment">
            </div>            
        
       </form>
        </div>
        
            
    </body>
   
</html>
