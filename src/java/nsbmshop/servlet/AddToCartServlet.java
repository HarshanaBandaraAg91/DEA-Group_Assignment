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
import javax.servlet.http.HttpSession;
import nsbmshop.product.model.Cart;

/**
 *
 * @author DELL
 */
@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        response.setContentType("text/html");
       
       try(PrintWriter out = response.getWriter()){
          ArrayList<Cart> cartList = new ArrayList<>();
          
          int id = Integer.parseInt(request.getParameter("id"));
          Cart cm = new Cart();
          cm.setId(id);
          cm.setQuantity(1);
          
          
          HttpSession session = request.getSession();
          ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
          
          if(cart_list == null){
              cartList.add(cm);
              session.setAttribute("cart-list", cartList);
              response.sendRedirect("Products.jsp"); //This redirect to the "Add To Cart page"
          }else{
              cartList = cart_list;
              boolean exist = false;
                           
              for(Cart c:cartList){
                 if(c.getId() == id){
                     exist = true;
                     out.println("<h3 style='color:crimson; text-align:center'>Item already exist in Cart.<a href='cart.jsp'>Go to Cart Page </a></h3>");
                 }
                 
                }
              if(!exist){
                     cartList.add(cm);
                     response.sendRedirect("Products.jsp"); //This redirect to the "Add To Cart page"
              }
          }
          
       }
    }

   
}
