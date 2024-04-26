/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nsbmshop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import nsbmshop.product.model.Cart;

/**
 *
 * @author DELL
 */
@WebServlet("/Quantity-inc-dec")
public class QuantityIncDecServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
       response.setContentType("text/html");
       try(PrintWriter out = response.getWriter();){
           String action = request.getParameter("action");
           int id = Integer.parseInt(request.getParameter("id"));
           
          ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
          
          //Increment quantity
          if(action != null && id>=1){
              if(action.equals("inc")){
                for(Cart c:cart_list){
                  if(c.getId() == id){
                      int quantity = c.getQuantity();
                      quantity++;
                      c.setQuantity(quantity);
                      response.sendRedirect("cart.jsp");
                  }
              }
           }
            
              //Decrement quantity
               if(action.equals("dec")){
                for(Cart c:cart_list){
                  if(c.getId() == id && c.getQuantity() > 1){
                      int quantity = c.getQuantity();
                      quantity--;
                      c.setQuantity(quantity);
                      break;
                  }
              }
                response.sendRedirect("cart.jsp");
           }
        }else{
              response.sendRedirect("cart.jsp");
          }
     }
       
   }
    
}
