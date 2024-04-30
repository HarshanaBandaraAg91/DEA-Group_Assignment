<%-- 
    Document   : Products
    Created on : Apr 24, 2024, 10:18:38 PM
    Author     : Thisangi Ranasinghe
--%>
<%@page import="nsbmshop.connection.proDo"%>
<%@page import="nsbmshop.product.dao.*"%>
<%@page import="nsbmshop.product.model.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
productdao pr = new productdao(proDo.getConnection());
List<shopproduct> products = pr.getAllshopproduct();
%>
 
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
   <style>
    .btn  {
        background-color:green;
        color: white;
        } 
     .card-header {
        text-align: center;  
        font-size: 24px;
        font-weight: bold; 
        color:white ; 
        background-color: green;
    }
    .price{
        font-weight: bold; 
    }
    .card-title{
         color:blue ;
    }
 </style>
    </head>
    <body>
        <div class="container">
            <div class="card-header my-3">All Products</div>
             <a href="cart.jsp">Click Here</a>
            <div class="row">
                <%
                    if(!products.isEmpty()){
                    for(shopproduct p:products){%>
             <div class="col-md-3 my-3">
                    <div class="card w-100" style="width: 18rem;">
                       <img class="card-img-top" src="Product-images/<%= p.getImage() %>" alt="Card image cap">
                         <div class="card-body">
                          <h5 class="card-title"><%= p.getName() %></h5>
                          <h6 class="price">Price:<%= p.getPrice() %></h6>
                          <h6 class="category">Category:<%= p.getCategory() %></h6>
                              <div class="mt-3 d-flex justify-content-between">
                                <a href="AddToCartServlet?id=<%= p.getId() %>" class="btn btn">Add to cart</a>
                              </div>
    
                   </div>
             </div>
          </div>
                  <% }
                   }
              %>
      </div>
 </div>
				 
         
        
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
    </body>
</html>
