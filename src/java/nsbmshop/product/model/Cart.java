/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nsbmshop.product.model;

/**
 *
 * @author DELL
 */
public class Cart extends shopproduct {
    private int quantity;
    
    public Cart(){
        
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
