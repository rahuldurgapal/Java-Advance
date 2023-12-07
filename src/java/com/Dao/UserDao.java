/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Dao;

/**
 *
 * @author rahul
 */
import java.sql.*;
import com.db.DBConnect;
import com.users.UserDetail;
public class UserDao {
    

        private static Connection con=DBConnect.getConnection();
      
        
      public boolean addUser(UserDetail us)
      {
          boolean f= false;
          try{
              PreparedStatement ps = con.prepareStatement("insert into user(name, email, password) values (?,?,?)");
              ps.setString(1,us.getName());
              ps.setString(2,us.getEmail());
              ps.setString(3,us.getPassword());
              
              int i= ps.executeUpdate();
              if(i==1)
                  f=true;
          }catch(Exception e){
              e.printStackTrace();
          }
           return f;
          }
      
      public static UserDetail loginUser(UserDetail us)
      {
          UserDetail u=null;
          
          try{
              PreparedStatement ps = con.prepareStatement("select * from user where email=? and password=?");
              ps.setString(1,us.getEmail());
              ps.setString(2,us.getPassword());
              ResultSet rs = ps.executeQuery();
              
              if(rs.next())
              {
                  u=new UserDetail();
                  u.setId(rs.getInt("id"));
                  u.setName(rs.getString("name"));
                  u.setPassword(rs.getString("password"));
                  u.setEmail(rs.getString("email"));
              }
              
          }catch(Exception e){
              e.printStackTrace();
          }
          
          return u;
      }
      
      
         
      }
    
    

