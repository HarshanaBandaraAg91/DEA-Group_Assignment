<%-- 
    Document   : Profile
    Created on : Apr 27, 2024, 10:35:15 PM
    Author     : grhar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
       body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f3f3f3;
}

.profile-container {
    width: 50%;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    animation: fadeIn 1s ease;
}

@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

h1 {
    color: #333;
}

.button {
    display: inline-block;
    padding: 10px 20px;
    margin: 10px;
    border-radius: 5px;
    text-decoration: none;
    color: #fff;
    background-color: #3cb34c;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transition: background-color 0.3s;
}

.button:hover {
    background-color: #8cc343;
}

.profile-photo {
    width: 100px;
    height: 100px;
    border-radius: 50%;
    object-fit: cover;
    margin-bottom: 20px;
}

.hidden {
    display: none;
}

/* Form eke CSS tika */
.form-container {
    width: 50%;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.form-input {
    width: 40%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

.form-submit {
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    background-color: #3cb34c;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s;
}

.form-submit:hover {
    background-color: #8cc343;
}

    </style>
        
    </head>
    <body>
        
        
         <%
         if(session.getAttribute("username")==null)
         {
         response.sendRedirect("login.jsp"); 
         }
        
         %>

         <%@ page import="java.sql.*" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
         
        <% 
         
         try {
            String username= (String)session.getAttribute("username");
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/logindata";
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url, "root", "");
            PreparedStatement st = conn.prepareStatement("SELECT * FROM user WHERE e_address = ?");
            st.setString(1, username);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
               String firstName = rs.getString("f_name");
                String lastName = rs.getString("l_name");
                String email = rs.getString("e_address");
                String mobileNumber = rs.getString("m_number");
            

           
    %>

         
          <%@include file = "navbar.html" %>
         
        
              
         <div class="profile-container">
        <img src="img/profile-icon.png" alt="Profile Photo" class="profile-photo">
        <h1>Welcome, <%=firstName %> <%=lastName %></h1>
        
        <div style="text-align: center;">
    <table style="width: 30%; margin: 0px auto;">
        <tr>
            <td style="text-align: left; padding: 10px;"><strong>E-mail :</strong></td>
            <td style="text-align: left; color: #333; padding: 10px;"><%= email %></td>
        </tr>
        <tr>
            <td style="text-align: left; padding: 10px;"><strong>Mobile :</strong></td>
            <td style="text-align: left; color: #333; padding: 10px;"><%= mobileNumber %></td>
        </tr>
        
    </table>
</div>


        
        
        
        <button id="editButton" class="button">Edit Profile</button>
        <form id="editForm" action="UpdateProfileServlet" method="post" enctype="multipart/form-data" class="hidden">
    <input type="text" id="firstName" name="firstName" placeholder="First Name" value="<%= firstName %>"><br><br>
    <input type="text" id="lastName" name="lastName" placeholder="Last Name" value="<%= lastName %>"><br><br>
    <input type="email" id="email" name="email" placeholder="Email" value="<%= email %>"><br><br>
    <input type="text" id="mobile" name="mobile" placeholder="Mobile Number" value="<%= mobileNumber %>"><br><br>
    <button type="submit" class="button">Update Profile</button>
</form>
        <a href="index.jsp" class="button">Shop</a>
        <a href="LogoutServlet.java" class="button">Logout</a>
    </div>
    <script>
        document.getElementById('editButton').addEventListener('click', function() {
            var form = document.getElementById('editForm');
            var button = document.getElementById('editButton');
            form.classList.toggle('hidden');
            button.classList.add('hidden');
        });
    </script>

    
    
     <%@include file = "footer.html" %>
     
     
     <% 
                }
                rs.close();
                st.close();
                conn.close();
                
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        
    </body>
</html>
