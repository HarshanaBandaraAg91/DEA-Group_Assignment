<%-- 
    Document   : updateproducts
    Created on : Apr 28, 2024, 1:00:29 PM
    Author     : hasit
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Update Product</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f3f3f3; /* Set background color */
        }
        .hd {
            font-family: arial;
            text-align: center;
        }
        .productform {
            width: 40%;
            margin: auto;
            background-color: #dce0de;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .lbl {
            font-size: 18px;
            font-family: arial;
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        
        .tf, .lbl{
            line-height: 20px;
        }
        .tf {
            width: 95%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid green;
            border-radius: 4px;
            line-height: 1.5;
            box-sizing: border-box;
        }
        
        .sbtn {
            background-color: #4CAF50;
        }
        .rbtn {
            background-color: red;
        }
        
        .sbtn, 
        .rbtn {
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
           
        }
        .sbtn:hover {
            background-color: #45a049;
        }
        .rbtn:hover {
            background-color: #d11b1b;
        }
        
        /* Media Queries for Mobile Responsiveness */
        @media (max-width: 768px) {
            .productform {
                width: 80%;
            }
        }
    </style>
</head>

<body>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.DataSource" %>
    <%@ page import="javax.naming.InitialContext" %>
    <%@ page import="javax.naming.NamingException" %>
    
    <%@include file = "navbar.html" %><br>
    
    <div class="productform">
        <h1 class="hd">Update Product</h1>
        
        <% 
            // Establish database connection
            String id = request.getParameter("id");
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/product_test";
            
            try {
                Class.forName(driver);
                Connection connection = DriverManager.getConnection(url, "root", "");
                PreparedStatement statement = connection.prepareStatement("SELECT * FROM product WHERE id = ?");
                statement.setString(1, id);
                ResultSet rs = statement.executeQuery();
                
                if (rs.next()) {
                    String name = rs.getString("name");
                    String category = rs.getString("category");
                    String price = rs.getString("price");
                    int quantity = rs.getInt("quantity");
                    byte[] imageData = rs.getBytes("image");
                    String base64Image = java.util.Base64.getEncoder().encodeToString(imageData);
        %>
                    <form action="UpdateServlet" method="post" enctype="multipart/form-data">
                        
                        <input type="hidden" name="pid" value="<%= id %>">
                        
                        <label class="lbl">Name:</label>
                        <input class="tf" type="text" name="pname" value="<%= name %>">
                        
                        <label class="lbl">Category:</label>
                        <select class="tf" name="pcat">
                            <option value="">Select</option>
                            <option value="sport items" <%= category.equals("sport items") ? "selected" : "" %>>Sport Items</option>
                            <option value="souvenirs" <%= category.equals("souvenirs") ? "selected" : "" %>>Souvenirs</option>
                            <option value="gifts" <%= category.equals("gifts") ? "selected" : "" %>>Gifts</option>
                        </select><br>
                        
                        <label class="lbl">Price:</label>
                        <input class="tf" type="text" name="pprice" value="<%= price %>">
                        
                        <label class="lbl">Quantity:</label>
                        <input class="tf" type="text" name="pquan" value="<%= quantity %>">
                        
                        <label class="lbl">Image:</label>
                        <img width="50" src="data:image/jpeg;base64, <%= base64Image %>" alt="Product Image"><br>
                        
                         <label class="lbl">Change Image:</label>
                         <input class="tf" type="file" name="pimage" ><br>
                        
                        <input class="sbtn" type="submit" value="Submit">
                        <a href="admin.jsp"><button class="rbtn">Cancel</button></a>
                    </form>
        <% 
                }
                rs.close();
                statement.close();
                connection.close();
                
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </div>
    <footer><%@include file = "footer.html" %></footer>
</body>
</html>



