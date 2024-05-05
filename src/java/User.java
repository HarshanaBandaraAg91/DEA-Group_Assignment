   import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
   import java.sql.ResultSet;






/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author grhar
 */
public class User {
    
    private static Connection conn;
    private static PreparedStatement st;

   

    void addUser(String EfirstName, String ElastName, String Eemail, String Emobile, String Epassword) {
        try {
            connectToDB();
            String query = "INSERT INTO user (f_name, l_name, e_address, m_number, pass) VALUES (?, ?, ?, ?, ?)";
            st = conn.prepareStatement(query);
            st.setString(1, EfirstName);
            st.setString(2, ElastName);
            st.setString(3, Eemail);
            st.setString(4, Emobile);
            st.setString(5, Epassword);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (st != null) {
                    st.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    
    
    
        

        
   
            public boolean check(String uname, String pass) {
        try {
            
            connectToDB();
            String query = "SELECT * FROM user WHERE e_address=? AND pass=?";
            st = conn.prepareStatement(query);
            st.setString(1, uname);
            st.setString(2, pass);

            try (ResultSet rs = st.executeQuery()) {
                rs.next();
                return true; 
            }
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            return false; 
        }
    }

    
        

     
   
    
    
    
    
    public void updateUser(String username, String firstName, String lastName, String email, String mobile) {
        try {
            connectToDB();
            String query = "UPDATE user SET f_name=?, l_name=?, e_address=?, m_number=? WHERE e_address=?";

            st = conn.prepareStatement(query);
            st.setString(1, firstName);
            st.setString(2, lastName);
            st.setString(3, email);
            st.setString(4, mobile);
            st.setString(5, username);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (st != null) {
                    st.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
    
    
    
    
    
    
    private void connectToDB() {
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/logindata";
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, "root", "");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

    private void closeResources() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}


