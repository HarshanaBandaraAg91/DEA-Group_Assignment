<%-- 
    Document   : Card
    Created on : Apr 28, 2024, 11:28:26 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Card Payment</title>
        <link href="CSS/style-2.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <body>
        
        <form action="CardPayment" method="POST">
            
            <h1>Card details</h1><br><br>
            
            <table>
                
                <tr>
                    <td>Card Holder name: </td>
                    <td><input type="text" name="chname" value="" placeholder="Card Holder name"></td>
                </tr>
                
                 <tr>
                    <td>ID Number: </td>
                    <td><input type="text" name="idno" value="" placeholder="ID Number"></td>
                </tr>
                
                 <tr>
                    <td>Phone Number: </td>
                    <td><input type="text" name="pno" value="" placeholder="Phone No"></td>
                </tr>
                
                <tr>
                    <td>Card Name: </td>
                    <td><input type="radio" name="card" value="">VISA
                    <input type="radio" name="card" value="">Debit
                    <input type="radio" name="card" value="">Master</td>
                </tr>
                
                 <tr>
                    <td>Card Number: </td>
                    <td><input type="text" name="cno" value="" placeholder="   . . . .   . . . .   . . .  ."></td>
                </tr>
                
                 <tr>
                    <td>CVV: </td>
                    <td><input type="password" name="cvv" value="" placeholder= "  . . ."></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" name="conform" value="Conform">
                  <input type="reset" name="clear" value="Clear"></td>
                </tr>
                
            </table>
        </form>
        
    </body>
</html>
