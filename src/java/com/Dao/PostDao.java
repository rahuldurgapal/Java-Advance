/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Dao;

/**
 *
 * @author rahul
 */
import com.db.DBConnect;
import com.users.Post;
import java.sql.*;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;
public class PostDao {
    
    private static Connection con = DBConnect.getConnection();
    
    public boolean AddNotes(Post pt)
    {
        boolean f = false;
        try{
            PreparedStatement ps = con.prepareStatement("insert into post(title,content,uid) values (?,?,?)");
            ps.setString(1,pt.getTitle());
            ps.setString(2,pt.getContent());
            ps.setInt(3,pt.getUser());
            
            int i=ps.executeUpdate();
            if(i==1)
                f=true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return f;
    }
    
    public List<Post> getData(int id)
    {
        
        Post p=null;
        List<Post>  list = new ArrayList<Post>();
        
        try{
            PreparedStatement ps = con.prepareStatement("select * from post where uid =? order by id desc");
            ps.setInt(1,id);
            
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                p = new Post();
                p.setId(rs.getInt(1));
                p.setTitle(rs.getString(2));
                p.setContent(rs.getString(3));
                p.setPdte(rs.getTimestamp(4));
                list.add(p);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    public Post getDataById(int id)
    {
        Post pt=null;
        try{
            
            PreparedStatement ps = con.prepareStatement("select * from post where id = ?");
            ps.setInt(1,id);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next())
            {
                pt=new Post();
                pt.setId(rs.getInt(1));
                pt.setTitle(rs.getString(2));
                pt.setContent(rs.getString(3));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return pt;
    }
    
    public boolean editNote(int id, String title, String content)
    {
        boolean f = false;
        try{
            PreparedStatement ps = con.prepareStatement("update post set title=?, content=? where id=?");
            ps.setString(1,title);
            ps.setString(2,content);
            ps.setInt(3,id);
            
            int i = ps.executeUpdate();
            if(i==1)
                f=true;
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return f;
    }
    
    public boolean deleteNote(int id)
    {
        boolean f = false;
        try{
            PreparedStatement ps = con.prepareStatement("delete from post where id = ?");
            ps.setInt(1, id);
            int i = ps.executeUpdate();
            if(i==1)
                f=true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
}
