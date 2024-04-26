<%-- 
    Document   : cart
    Created on : Apr 26, 2024, 11:07:08 AM
    Author     : DELL
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="nsbmshop.product.dao.productdao"%>
<%@page import ="nsbmshop.connection.proDo" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="nsbmshop.product.model.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);
    
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if(cart_list != null){
    productdao pDao = new productdao(proDo.getConnection());
    cartProduct = pDao.getCartProducts(cart_list);
   double total = pDao.getTotalCartPrice(cart_list);
    request.setAttribute("cart_list", cart_list);
    request.setAttribute("total", total);
}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
        
        <style type="text/css">
            .table tbody td{
                vertical-align: middle;
            }
            .btn-incre, .btn-decre{
                box-shadow: none;
                font-size: 25px;
            }
            .price{
                color: green;
            }
            .bd{
                color:white;
                background-color: #00008B;
                box-shadow: o o 10px rgba(0, 0, 0, 0.1);
                -webkit-transition-duration: 0.3s;
                transition-duration: 0.2s;
                -webkit-transition-property: box-shadow, transform;
                transition-property: box-shadow, transform;
            }
            .bd:hover, btn:focus, btn:active{
                color: greenyellow;
                font-weight: bold;
                box-shadow: o o 20px rgba(0, 0, 0, 0.5);
                -webkit-transform: scale(1.1);
                transform: scale(1.1);
            }
            
              
            
        </style>
    </head>
    <body>
       <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" ></script>
        
        
        <div class="container">
            <a href="Products.jsp">Click Here</a>
            <div class="d-flex py-3"><h3 class="price">Total Price: Rs.${ (total>0)?dcf.format(total):0 }</h3><a class="mx-3 btn btn bd" href="#">Check Out</a></div>  <!-- if total is zero = (total>0)?total:0 -->

            <table class="table table-Loght">
                <thead>
                    <tr>
                        <th scope="col">id</th>
                        <th scope="col">name</th>
                        <th scope="col">category</th>
                        <th scope="col">price</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">image</th>
                        <th scope="col">Cancel</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        if(cart_list != null){
                            for(Cart c:cartProduct){ %>
                                <tr>
                        <td>1</td>
                        <td><%= c.getName() %></td>
                        <td><%= c.getCategory()%></td>
                        <td>Rs <%= dcf.format(c.getPrice()) %></td>   
                        <td>
                            <form method="post" action="" class="form-inline">
                                <input type="hidden" name="id" value="<%= c.getId()%>" class="form-input" />
                                <div class="form-group d-flex justify-content-between w-50">
                                    <a class="btn btn-sm btn-decre " href="Quantity-inc-dec?action=dec&id=<%= c.getId() %> "><i class="fas fa-minus-square"></i></a>                                
                                   
                                    <input type="text" name="quantity" class="form-control w-50" value="<%= c.getQuantity() %>" readonly="" />
                                                                     
                                    <a class="btn btn-sm btn-incre" href="Quantity-inc-dec?action=inc&id=<%= c.getId() %> "><i class="fas fa-plus-square"></i></a>
                                </div>
                                  <!-- Button -->
                                <button type="submit" class="btn btn-primary btn-sm">Buy</button>
                            </form>
                        </td>
                        <td></td>
                        <td><a class="btn btn-sm btn-danger" href="remove-from-cart?id=<%= c.getId()%>">Remove</a></td>
                    </tr>
                           <% }
                        }
                        
                        %>
                    
                </tbody>
            </table>
        </div>
    </body>
</html>
