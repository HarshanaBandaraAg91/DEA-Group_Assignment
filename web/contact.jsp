<%-- 
    Document   : index
    Created on : Apr 28, 2024, 2:09:57 PM
    Author     : Kavisha Weerasinghe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="styles.css">
    <title>Navbar</title>
    <style>/* Reset default styles for list */
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}

/* Navbar styles */
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #ffffff;
    padding: 10px 20px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    height: 70px; /* Increased height */
}

/* Logo styles */
.logo {
    display: flex;
    align-items: center;
}

.logo img {
    height: 50px; 
    margin-right: 10px;
}

/* Menu styles */
.menu {
    display: flex;
    align-items: center;
}

.menu li {
    margin-right: 50px;
}

.menu li a {
    font-family: sans-serif;
    font-size: 14;
    color: navy;
}

.menu a {
    text-decoration: none;
    color: #333;
    font-weight: bold;
}

/* Icons styles */
.icons {
    display: flex;
    align-items: center;
}

.icons a {
    margin-right: 15px;
}

.icons a img {
    height: 25px;
}

/* Hamburger menu icon (you can use an SVG or an icon font) */
.menu-icon {
    display: none; /* Hide by default for larger screens */
    width: 30px;
    height: 3px; /* Adjusted size */
    background-color: #333;
    position: relative;
    cursor: pointer; /* Add cursor pointer for better UX */
}

.menu-icon::before,
.menu-icon::after {
    content: "";
    position: absolute;
    width: 30px;
    height: 3px; /* Adjusted size */
    background-color: #333;
}

.menu-icon::before {
    top: -8px;
}

.menu-icon::after {
    top: 8px;
}

.search-bar {
    border: 1px solid green;
    border-radius: 0px;
    padding: 10px 20px;
    width: auto;
  }
  .search-icon {
    color: white;
    padding: 5px;
    position: absolute;
    right: 10px;
    
  }
  
  .search-icon img{
   height: 25px;   
  }
/* Media Query for mobile devices */
@media screen and (max-width: 768px) {
    .navbar {
        padding: 10px; /* Adjust padding for smaller screens */
        height: auto; /* Allow height to adjust automatically */
    }

    .menu {
        display: none;
        flex-direction: column; /* Stack menu items vertically */
        position: absolute;
        top: 70px; /* Adjust based on navbar height */
        left: 0;
        background-color: #ffffff;
        width: 100%;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .menu.active {
        display: flex; /* Display menu when active */
    }

    .menu li {
        margin-right: 0;
        margin-bottom: 10px; /* Add margin between menu items */
    }

    .menu-icon {
        display: block; /* Display hamburger menu icon */
    }
     #footer-table {
        width: 90%;
        border-collapse: collapse;
        table-layout: fixed;
        margin: 0 auto;
        padding: 20px;
    }

    #footer-table td {
        padding: 10px;
        vertical-align: top;
        text-align: left;
    }

    /* Adjusted widths for columns */
    .logoc {
        width: 40%;
        padding-left: 20px;
    }

    #support,
    #links2,
    #contact {
        width: 20%;
    }

    #logo .limg {
        width: 200px;
    }

    table td h3 {
        color: navy;
    }
    
    #logo p{
        font: 14px Arial, sans-serif;
        width: 80%;
        color: gray;
        line-height: 25px;
    } 

    table tr td .pimg {
        width: 100px;
        margin-right: 10px;
        padding-left: 50px;
    }

    table tr td hr {
        width: 40%;
        border-color: navy;
        border-top: 3px solid navy;
        margin-left: 0;
    }

    @media screen and (max-width: 600px) {
        #footer-table td {
            display: block;
            width: 100%;
        }
    }

    #support a,
    #links2 a,
    #contact a {
        text-decoration: none;
        color: gray;
        transition: color 0.3s ease;
        font-size: 17px;
        font-family: sans-serif;
    }

    #support a:hover,
    #links2 a:hover ,
    #contact a:hover{
        color: navy;
    }
    
    #support a,
    #links2 a,
    #contact a {
        display: inline;
        position: relative;
        overflow: hidden;
    }
    #support a:after,
    #links2 a:after,
    #contact a:after {
        content: "";
        position: absolute;
        z-index: -1;
        right: 0;
        width: 0;
        bottom: -5px;
        background: navy;
        height: 4px;
        transition-property: width;
        transition-duration: 0.3s;
        transition-timing-function: ease-out;
    }
    #support a:hover:after,
    #links2 a:hover:after,
    #contact a:hover:after {
        left: 0;
        right: auto;
        width: 100%;
    }
}
</style>
</head>
    <body>
         <nav class="navbar">
        <div class="logo">
            <a href="index.jsp"><img src="img/logo.png" alt="Logo"></a>
        </div>
        <ul class="menu">
            <li><a href="#">Shop</a></li>
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="/contact.jsp">Contact</a></li>
        </ul>
        <div style="position: relative;">
            <input type="text" class="search-bar">
            <span class="search-icon"><img src="img/search-icon.png" alt="Search"></span>
        </div>
        <div class="icons">
            <a href="#"><img src="img/cart-icon.png" alt="Cart"></a>
            <a href="#"><img src="img/profile-icon.png"></a>            
            <div class="menu-icon"></div>
        </div>
    </nav>
        <p><center>
        <table>
            <tr><td>
            <img src="img/Hasith.jpeg" width="250">
            <div class="description"><center>
                    <card>Hasith Fernando</center></div></td>
                <td>
                    <img src="img/rumesh.jpeg" width="250">
                    <div class="description"><center>
                            <card>Rumesha Harshan</center></div></td>
                <td>
                            
                    <img src="img/hiruni.jpeg" width="250">
                    <div class="description"><center>
                            <card>Hiruni Chathurya</center></div></td>
                <td>
                    <img src="img/tharindi.jpg" width="250">
                    <div class="description"><center>
                            <card>Tharindi Dinesha</center></div></td></tr></table></center></p>
            <p><center>
                <table>
                    <tr><td>
                            
                            <img src="img/harshana.jpeg" width="250">
                            <div class="description"><center>
                                    Harshana Nanayakkara</center></div></td>
                                <td>
                            <img src="img/kavisha.jpeg" width="250">
                            <div class="description"><center>
                                    Kavisha Weerasinghe</center></div></td>
                                <td>
            <img src="img/thisanga.jpeg" width="250">
            <div class="description"><center>
                    Thisangi Ranasinghe</center></div></td></tr></table></center>
        </p>
        <p><center>
            <table>
                <tr><td>
            <img src="img/kavindi.jpeg" width="250">
            <div class="description"><center>
                    Kavindi Kaushalya</center></div></td>
                <td>
            <img src="img/isuri.jpeg" width="250">
            <div class="description"><center>
                    Isuri Kavindya</center></div></td>
                <td>
            <img src="img/ruwani.jpg" width="250">
            <div class="description"></center>
            Ruwani Chandrarathne</center></div></td></tr></table></center></p>
        <fieldset style="border-color:darkgreen;">
        <h1 style="color:darkgreen;">Contact Us</h1>
        <p><b>Feel free to contact us if you have any question about this web application.</b>
            <img src="img/green.jpg" alt="nsbm green logo" width="150" align="right"></p>
        </fieldset>
        <table id="footer-table">
    <tr>
        <td class="logoc" id="logo">
            <img class="limg" src="img\logo.png" alt="NSBM SHOP Logo">
            <p>The NSBM Shop brings wide array of gifts and souvenirs ranging from graduation gifts, 
                sports equipment, NSBM branded clothing, customized gift solutions
                such as mugs, photo frames, acrylic plaques and etc.</p>
            <h3>Payments Accepted via
            <img class="pimg" src="img\payment.png" alt="Payments"></h3>
        </td>
        <td id="support">
            <h3>Support</h3>
            <hr><br>
            <a href="#">Privacy Policy</a><br><br>
            <a href="#">Terms &amp Conditions</a> <br><br>
            <a href="#">Help Center</a> <br><br>
        </td>
        <td id="links2">
            <h3>Useful Links</h3>
            <hr><br>
            <a href="about.jsp">About</a> <br><br>
            <a href="index.jsp">Shop</a> <br><br>
            <a href="login.jsp">Sign in</a> <br><br>
        </td>
        <td id="contact">
            <h3>Contact Us</h3>
            <hr><br>
            &#128205;&nbsp;<a>NSBM Green University Town</a> <br><br>
            &#128231;&nbsp;<a href="mailto:inquiries@nsbm.ac.lk"> inquiries@nsbm.ac.lk </a> <br><br>
            &#128222;&nbsp;<a href="tel:+94 11 544 5000">+94 11 544 5000</a> <br><br>
        </td>
    </tr>
    </table>
        

    </body>
</html>