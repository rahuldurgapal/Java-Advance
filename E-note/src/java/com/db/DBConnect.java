/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.db;

/**
 *
 * @author rahul
 */
import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnect {
    
   private static Connection con=null;
    public static Connection getConnection(){
        
        try{
            if(con==null)
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes","root","");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
}
}
