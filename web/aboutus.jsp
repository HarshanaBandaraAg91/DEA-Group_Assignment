<%-- 
    Document   : aboutus
    Created on : May 4, 2024, 7:01:28 AM
    Author     : hasit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <title>About Us</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2; /* Light gray background */
            margin: 0; /* Remove default margin */
            padding: 0; /* Remove default padding */

        .header {
            position: relative;
            text-align: center;
        }

        .header img {
            width: 100%;
            height: auto;
            opacity: 0.8;
        }

        .header h1 {
            position: absolute;
            font-size: 5em;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: #fff;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            z-index: 1;
        }

        h2 {
            font-size: 1.8em;
            color: #59CA26;
            text-align: center;
            margin-top: 20px;
        }
        
        .team{
            color: #59CA26;
            font-size: 1.2em;
            text-align: center;
            line-height: 10px;
        }
        
        .main-parent {
            position: relative;
        }
        
        table{
            width: 80%;
            margin: 0 auto; 
        }
        
        table .left{
            padding-right:  15px;
            width: 50%;
        }
      
        table .right{
            width: 50%;
            text-align: right;
        }
        
        .image1 {
            position: relative;
            top: 0px;
            left: 0;
            height:200px;
            border-radius: 10%;
            border: 2px solid #59CA26;
        }
        
        .image2 {
            position: absolute;
            top: 70px;
            left: 100px;
            height: 200px;
            border-radius: 10%;
            border: 2px solid #59CA26;
        }

        .spara, .dpara {
            font-size: 1.2em;
            text-align: justify;
            margin: 0 auto;
            line-height: 1.5;
            margin-bottom: 20px;
        }
        
        .dpara{
            width: 80%;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .card {
            width: 180px; /* Adjusted width to accommodate borders and margins */
            margin: 10px; /* Adjusted margin */
            background-color: #E3F2E1; /* White background for cards */
            overflow: hidden; /* Ensure content stays within circle */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow */
            border: 2px solid #59CA26; /* Green border */
            box-sizing: border-box; /* Include borders and padding in width */
            text-align: center;
        }

        .card img {
            width: 80%;
            border-radius: 50%; /* Make the image circular */
            padding: 5px;
            padding-top: 15px;
        }

        .fa-github {
            color: black;
            padding-top: 10px;
        }

        .description {
            padding: 10px;
            color: black;
            line-height: 15px;
            font-family: Arial, sans-serif;
        }
        
        table .uniimg{
            width: 100%;
        }
        
        .sbtn {
            background-color: #4CAF50;
            color: #fff;
            padding: 8px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        
        .sbtn:hover {
            background-color: #45a049;
        }

        .unirow:after {
           content: "";
           display: table;
        clear: both;
        }

        .card:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Slightly stronger shadow on hover */
        }
        
       
    </style>
</head>
<body>
    <div class="header">
        <img src="Images/Picture1.png" alt=""/>
        <h1>About Us</h1>
    </div>
    <table class="shoptable">
        <tr><td class="left"><h2>Exploring the Essence of NSBM Shop</h2>
    <p class="spara">Welcome to NSBM Shop, your one-stop destination for a delightful array of gifts and souvenirs. Nestled within the vibrant campus of NSBM Green University, we pride ourselves on offering a diverse selection, catering to every occasion and taste. From thoughtful graduation presents to quality sports equipment, and from stylish NSBM branded apparel to personalized treasures like mugs, photo frames, and acrylic plaques, we aim to make every moment special. Explore our collection and discover the perfect token of appreciation or memory to cherish.</p>
            </td>
            <td class="right">
                <div class="mid">
                    <div class="main-parent">
                    <img class="image1" src="Images/shop1.png" alt=""/>
                    <img class="image2" src="Images/shop2.png" alt=""/>
                </div>
            </td>
    </table>
    <h2>About the developers.</h2>
    <p class="dpara">Our website's development team comprises a  group of undergraduate students, all hailing from the 
        esteemed NSBM Green University. Passionate about technology and innovation, our team brings together diverse 
        skills and perspectives to craft an exceptional online experience for our customers. With a shared dedication 
        to excellence and a commitment to learning, we collaborate seamlessly to design and maintain a platform that 
        reflects the spirit and values of our university community. From coding wizards to design maestros, our team 
        members are not only shaping the digital face of NSBM Shop but also gaining invaluable real-world experience 
        that will serve them well in their academic and professional journeys.</p>

    <h3 class="team">Our Team</h3>
    <div class="container">
    <div class="card">
        <img src="Images/Hasith.jpeg" alt=""/>
        <p class="description">Hasith Fernando<br><a href="https://github.com/HasithFernando"><i class="fab fa-github"></i></a></p>
    </div>

    <div class="card">
        <img src="Images/rumesh.jpeg" alt=""/>
        <p class="description">Rumesha Harshan<br><a href="https://github.com/grHarshan"><i class="fab fa-github"></i></a></p>
    </div>

    <div class="card">
        <img src="Images/hiruni.jpeg" alt=""/>
        <p class="description">Hiruni Chathurya<br><a href="https://github.com/HiruniChathurya"><i class="fab fa-github"></i></a></p>
    </div>

    <div class="card">
        <img src="Images/tharindi.jpeg" alt=""/>
        <p class="description">Tharindi Dinesha<br><a href="https://github.com/ThariDinesha"><i class="fab fa-github"></i></a></p>
    </div>

    <div class="card">
        <img src="Images/harshana.jpeg" alt=""/>
        <p class="description">Harshana Bandara<br><a href="https://github.com/HarshanaBandaraAg91"><i class="fab fa-github"></i></a></p>
    </div>

    <div class="card">
        <img src="Images/kavisha.jpeg" alt=""/>
        <p class="description">Kavisha Weerasinghe<br><a href="https://github.com/kavishaweerasinghe"><i class="fab fa-github"></i></a></p>
    </div>

    <div class="card">
        <img src="Images/thisangi.jpeg" alt=""/>
        <p class="description">Thisangi Ranasinghe<br><a href="https://github.com/ThisangiRanasinghe"><i class="fab fa-github"></i></a></p>
    </div>

    <div class="card">
        <img src="Images/kavindi.jpeg" alt=""/>
        <p class="description">Kavindi Kaushalya<br><a href="https://github.com/kavindikaushalya2000"><i class="fab fa-github"></i></a></p>
    </div>

    <div class="card">
        <img src="Images/isuri.jpeg" alt=""/>
        <p class="description">Isuri Kavindya<br><a href="https://github.com/Isukai"><i class="fab fa-github"></i></a></p>
    </div>

    <div class="card">
        <img src="Images/ruwani.jpeg" alt=""/>
        <p class="description">Ruwani Chandrarathne<br><a href="https://github.com/RuwaniChandrarathne"><i class="fab fa-github"></i></a></p>
    </div>
</div>
    <table>
        <tr><td class="left">
  <div class="unicolumn">
 <h2>NSBM GREEN UNIVERSITY</h2>
    <p>NSBM Green University, the nation’s premier degree-awarding institute, is the first of its kind in South Asia. It is a government-owned self-financed institute that operates under the purview of the Ministry of Education. As a leading educational centre in the country, NSBM has evolved into becoming a highly responsible higher education institute that offers unique opportunities and holistic education on par with international standards while promoting sustainable living.
        <br><br>NSBM offers a plethora of undergraduate and postgraduate degree programmes under five faculties: Business, Computing, Engineering, Science and Postgraduate and Professional Advancement. These study programmes at NSBM are either its own programmes recognised by the University Grants Commission and the Ministry of Higher Education or world-class international programmes conducted in affiliation with top-ranked foreign universities such as University of Plymouth, UK, and Victoria University, Australia. 
        <br><br>Focused on producing competent professionals and innovative entrepreneurs for the increasingly globalising world, NSBM nurtures its graduates to become productive citizens of society with their specialisation ranging in study fields such as Business, Management, Computing, IT, Engineering, Science, Psychology, Nursing, Interior design, Quantity Surveying, Law and Multimedia. 
        <br><br>Inspired by the vision of being Sri Lanka’s best-performing graduate school and being recognised internationally, NSBM currently achieves approximately 3000 new enrollments per year and houses above 11,000 students reading over 50 degree programmes under 4 faculties. Moreover, over the years, NSBM Green University has gifted the nation with 14,000+ graduates and has proved its global presence with an alumni network spread all across the world. 
        <br><br>Nestling on a 40-acre land amidst the greenery and serenity in Pitipana, Homagama, NSBM Green University, is an ultra-modern university complex constructed with stateof-the-art facilities and amenities that provides the perfect setting for high-quality teaching, learning and research.</p>
      <a href="https://nsbm.ac.lk/"><button class="sbtn">Visit NSBM</button></a>
  </div>
            <td><div class="unicolumn">
                <img class="uniimg" src="Images/NSBM-1.jpg" alt=""/>
  </div>
</td></tr>
    </table><br><br>
    </body>
</html>
