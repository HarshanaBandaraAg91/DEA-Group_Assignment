/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author hasit
 */
@WebServlet(name = "deleteservlet", urlPatterns = {"/deleteservlet"})
public class deleteservlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet deleteservlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet deleteservlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String driver="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/product_test";
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, "root", "");

            String query = "DELETE FROM product WHERE id=?";
            pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, id);
            
            int rowsAffected = pstmt.executeUpdate();
            
            PrintWriter out = response.getWriter();
            if (rowsAffected > 0) {
                response.sendRedirect("admin.jsp");;
            } else {
                out.println("<html><body><h2>Error deleting product!</h2></body></html>");
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(deleteservlet.class.getName()).log(Level.SEVERE, null, ex);
        }
      
        try {
            if (pstmt != null)
                pstmt.close();
            if (conn != null) 
                conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(deleteservlet.class.getName()).log(Level.SEVERE, null, ex);
        }
                
            
        //processRequest(request, response);
                
            
        //processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
