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
    
    
    public List<Cart> getCartProducts(ArrayList<Cart> cartList){
        List<Cart> products = new ArrayList<Cart>();
        try{
            if(cartList.size()>0){
                for(Cart item:cartList){
                    query = "select * from products where id=?";
                    pst = this.con.prepareStatement(query);
                    pst.setInt(1, item.getId());
                    rs = pst.executeQuery();
                    
                    while(rs.next()){
                        Cart row = new Cart();
                        row.setId(rs.getInt("id"));
                        row.setName(rs.getString("name"));
                        row.setCategory(rs.getString("category"));
                        row.setPrice(rs.getDouble("price")*item.getQuantity());
                        row.setQuantity(item.getQuantity());
                        products.add(row);
                    }
                }
            }
        }catch(Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return products;
    }
    
    //Get Total price from the cart list
    public double getTotalCartPrice(ArrayList<Cart> cartList){
        double sum = 0;
        
        try{
            if(cartList.size()>0){
                for(Cart item:cartList){
                    query = "select price from products where id=?";
                    pst = this.con.prepareStatement(query);
                    pst.setInt(1, item.getId());
                    rs = pst.executeQuery();
                    
                    while(rs.next()){
                        sum += rs.getDouble("price")*item.getQuantity();
                    }
                }
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return sum;
    }
    
}
