/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package nsbmshop.product.dao;

/**
 *
 * @author Thisangi Ranasinghe
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.*;
import nsbmshop.product.model.*;
public class productdao {
       
    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    public productdao(Connection con) {
		 
		this.con = con;
	}
    public List<shopproduct> getAllshopproduct(){
         List<shopproduct> products = new ArrayList<>();
         
         try{

            query = "select * from products";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while(rs.next()){
                shopproduct rows=new shopproduct(); 
                rows.setId(rs.getInt("id"));
                rows.setName(rs.getString("name"));
                rows.setCategory(rs.getString("category"));
                rows.setPrice(rs.getDouble("price"));
                rows.setImage(rs.getString("image"));
                
                products.add(rows);
                
            }
         }catch(Exception e){
            e.printStackTrace();
             
         }
         return products;
    }
    
}
