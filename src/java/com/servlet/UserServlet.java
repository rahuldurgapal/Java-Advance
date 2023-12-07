/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlet;

/**
 *
 * @author rahul
 */
import com.Dao.UserDao;
import com.users.UserDetail;
import javax.sql.*;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
public class UserServlet extends HttpServlet {
    
     @Override
     public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
     {
        
         String name = req.getParameter("name");
         String email = req.getParameter("email");
         String password = req.getParameter("password");
         
         UserDetail us = new UserDetail();
         us.setName(name);
         us.setEmail(email);
         us.setPassword(password);
         
         UserDao ud = new UserDao();
         boolean f=ud.addUser(us);
          HttpSession session;
         if(f)
         {
             session=req.getSession();
             session.setAttribute("success", "Registration Successfully..");
             res.sendRedirect("register.jsp");
         }
        else
         {
             session=req.getSession();
             session.setAttribute("failed","Something went wrong on server");
             res.sendRedirect("register.jsp");
         }
            
     }
}
