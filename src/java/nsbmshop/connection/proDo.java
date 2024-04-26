/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package nsbmshop.connection;

/**
 *
 * @author Thisangi Ranasinghe
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class proDo {
    private static Connection connection = null;
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
        if(connection == null){
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3307/newshop","root","");
            System.out.print("connected");
        }
        return connection;
    }
    
    
}