<%-- 
    Document   : adminmenu
    Created on : May 4, 2024, 7:27:13 PM
    Author     : hasit
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Menu admin</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            height: 130vh;
        }

        .shrmenu {
            background-color: #4CAF50;
            color: #fff;
            width: 300px;
            height: 100%;
            transition: width 0.3s ease;
            overflow-y: auto;
        }

        .shrmenu ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .shrmenu ul li {
            padding: 10px;
            display: block;
            transition: 0.3s;
            line-height: 2.5;
            text-align: right;
            padding-right: 50px;
            font-size: 20px;
        }
        .welcome{
            font-family: "Arial Black", Gadget, sans-serif;
        }

        .shrmenu ul li a {
            color: #fff;
            text-decoration: none;
        }

        .shrmenu ul li a:hover {
            text-decoration: underline;
        }

        .cmain {
            flex: 1;
            padding: 20px;
        }

        .toggleMenu {
            display: block;
            cursor: pointer;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            outline: none;
            z-index: 2;
            position: absolute;
            top: 20px;
            left: 0;
        }

        .toggleMenu .bar {
            display: block;
            width: 25px;
            height: 3px;
            background-color: #fff;
            margin: 5px 0;
            transition: 0.4s;
        }

        #new:checked ~ .shrmenu {
            width: 50px;
        }

        #new:checked ~ .shrmenu ul li {
            display: none;
        }

        #new:checked ~ .toggleMenu .bar:nth-child(2) {
            opacity: 0;
        }

        #new:checked ~ .toggleMenu .bar:nth-child(1) {
            transform: translateY(8px) rotate(45deg);
        }

        #new:checked ~ .toggleMenu .bar:nth-child(3) {
            transform: translateY(-8px) rotate(-45deg);
        }
    </style>
</head>
<body>
<div class="container">
    <input type="checkbox" id="new" style="display:none;">
    <nav class="shrmenu"><br><br><br><br><br><br>
        <ul><li><p class="welcome"> Welcome Admin! &#128522;</p></li>
            <li><a href="admin.jsp">Home</a></li>
            <li><a href="admin.jsp">All products</a></li>
            <li><a href="addproducts.jsp">Add New Product</a></li>
            <li><a href="#">Manage Orders</a></li>
            <li><a href="#">Manage Users</a></li>
        </ul>
    </nav>
    <main class="cmain">
        <label class="toggleMenu" for="new">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </label>
        

