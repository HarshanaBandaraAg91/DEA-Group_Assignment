<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Page</title>
        <link href="CSS/style-1.css" rel="stylesheet" type="text/css"/>
            
    </head>
    <body>
        <form action="Payment" method="POST">
            
            <h1>Payment</h1><br>
            
           <table>
                <tr>
                    <td>Total Amount</td>
                    <td><input type="text" name="atamount" value=""></td>
                </tr>
                
                 <tr>
                    <td>Payment Method</td>
                    <td><input type="radio" name="pmethod" value="cash">COD
                    <input type="radio" name="pmethod" value="card">Card</td>
                </tr>
                
                <tr><td></td><td>
                    <input type="submit" name="sub" value="Submit"></td></tr>
                </table>
        </form>
    </body>
</html>
