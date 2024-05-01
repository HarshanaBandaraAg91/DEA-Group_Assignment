<%-- 
    Document   : success-1
    Created on : Apr 30, 2024, 12:34:16 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cash Payment Success</title>
        <link href="CSS/suc-1.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <body>
        
        <h1>Thanks for choosing our service!</h1>

         <form action="Payment" method="POST">
             
            <h2>Order Details</h2>
            
            <table>
                
                <tr>
                    <td>
                        First Name :
                    </td>
                    <td><input type="text" name="fname"></td>
                </tr>
                    
                    <tr>
                    <td>
                        Last Name :
                    </td>
                    <td><input type="text" name="lname"></td>
                </tr>
                
                    <td>
                       Address :
                    </td>
                    <td><input type="text" name="add"></td>
                </tr>
                
                <tr>
                    <td>
                        District :
                    </td>
                    <td><input type="text" name="dis"></td>
                </tr>
                
                    <tr>
                    <td>
                        City :
                    </td>
                    <td><input type="text" name="city"></td>
                </tr>
                
                    <tr>
                    <td>
                        Mobile No : :
                    </td>
                    <td><input type="text" name="no"></td>
                </tr>
                
                    <tr>
                    <td>
                        Email :
                    </td>
                    <td><input type="text" name="email"></td>
                </tr>
                
                <tr>
                    <td>
                       Total Amount :
                    </td>
                    <td><input type="text" name="amount"></td>
                </tr>
                
            </table>
        </form>
            
    
    </body>
</html>