<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
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
            font-family: ariel;
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
            font-family: ariel;
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
    <div class="productform">
        <h1 class="hd">Add New Product</h1>
        <form action="ProductServlet" method="post" enctype="multipart/form-data">
            <label class="lbl" for="pname">Name:</label>
            <input class="tf" type="text" name="pname">
            <label class="lbl" for="pcat">Category:</label>
            <select class="tf" name="pcat">
                <option value="">Select</option>
                <option value="sport items">Sport Items</option>
                <option value="souvenirs">Souvenirs</option>
                <option value="gifts">Gifts</option>
            </select><br>
            <label class="lbl" for="pprice">Price:</label>
            <input class="tf" type="text" name="pprice">
            <label class="lbl" for="imageFile">Choose Image:</label>
            <input class="tf" type="file" id="imageFile" name="imageFile">
            <label class="lbl" for="pquan">Quantity:</label>
            <input class="tf" type="number" name="pquan" value="1" min="1">
            <input class="sbtn" type="submit" value="Submit">
            <input class="rbtn" type="reset" value="Cancel">
        </form>
    </div>
</body>
</html>


