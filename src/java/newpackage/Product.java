/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hasit & hirun
 */
public class Product {
    public Statement st;
    PreparedStatement ps;
    Connection con;

    void addProduct(String name, String cat, String price, int quan, InputStream imageStream) {
        String query= "INSERT INTO product (name, category, price, quantity, image) VALUES (?, ?, ?, ?, ?)";
        try {  
            connectToDb();
            ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, cat);
            ps.setString(3, price);
            ps.setInt(4, quan);
            ps.setBlob(5, imageStream);
            ps.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    void updateProduct(int id, String name, String cat, String price, int quan, InputStream imageStream) {
        String query = "UPDATE product SET name = ?, category = ?, price = ?, quantity = ?";
        if (imageStream != null) {
            query += ", image = ?";
        }
        query += " WHERE id = ?";
        try {
            connectToDb();
            ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, cat);
            ps.setString(3, price);
            ps.setInt(4, quan);
            int paramIndex = 5;
            if (imageStream != null) {
                ps.setBlob(paramIndex++, imageStream);
            }
            ps.setInt(paramIndex, id);
            ps.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void connectToDb() throws SQLException {
        String driver="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/product_test";
        try {
            Class.forName(driver);
            con= DriverManager.getConnection(url, "root", "");
            st = con.createStatement();
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
