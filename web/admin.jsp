<%-- 
    Document   : admin
    Created on : Apr 28, 2024, 11:32:24 AM
    Author     : hasit
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Products</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f1f1f1;
        }
        
        .product-container {
            margin: 20px auto;
            padding: 20px;
            max-width: 800px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        .product-title {
            margin-top: 0;
            padding-bottom: 10px;
            border-bottom: 1px solid #ddd;
            font-size: 24px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .product-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        
        .product-table th, .product-table td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        .product-table th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        
        .product-image img {
            max-width: 50px;
            max-height: 50px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        
        .action-buttons button {
            padding: 8px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        
        .blue-button {
            background-color: blue;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            margin-bottom: 10px;
            margin-left: auto;
            transition: background-color 0.3s ease; 
        }

        .blue-button:hover {
            background-color: darkblue; 
        }

        .blue-button:active {
            transform: translateY(1px); 
        }

        .blue-button:visited {
            color: white; 
        }
        
        .sbtn {
            background-color: #4CAF50;
            color: #fff;
        }
        
        .rbtn {
            background-color: #f44336;
            color: #fff;
        }
        
        .sbtn:hover {
            background-color: #45a049;
        }
        
        .rbtn:hover {
            background-color: #d32f2f;
        }
        
        .action-buttons button + button {
            margin-left: 5px;
        }
    </style>
        <%@ page import="java.sql.ResultSet" %>
        <%@ page import="newpackage.Product" %>
        <%@ page import="java.util.Base64" %>

<%
    Product product = new Product();
    product.connectToDb();
    ResultSet rs = product.st.executeQuery("SELECT * FROM product");
%>
</head>
<body>
    <div class="product-container">
        <h1 class="product-title">
            Products 
            <a href="index.html"><button class="blue-button">ADD NEW PRODUCT</button></a>
        </h1>
        <table class="product-table">
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% while(rs.next()){ 
                int id = rs.getInt("id"); %>
                <tr>
                    <td class="product-image">
                        <% 
                            byte[] imgData = rs.getBytes("image");
                            String encode = Base64.getEncoder().encodeToString(imgData);
                        %>
                        <img src="data:image/jpeg;base64, <%=encode%>" alt="Product Image">
                    </td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("category") %></td>
                    <td><%= rs.getString("price") %></td>
                    <td><%= rs.getInt("quantity") %></td>
                    <td class="action-buttons">
                        <a href="updateproducts.jsp?id=<%=id%>"><button class="sbtn" >UPDATE</button></a>
                        <a href="deleteservlet?id=<%=id%>"><button class="rbtn">DELETE</button></a>

                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>

