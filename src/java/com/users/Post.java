
package com.users;

import java.util.Date;


public class Post {
    
    private int id;
    private String title;
    private String content;
    private Date pdte;
    private int user;

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getPdte() {
        return pdte;
    }

    public void setPdte(Date pdte) {
        this.pdte = pdte;
    }

    public int getUser() {
        return user;
    }

    public void setUser(int user) {
        this.user = user;
    }
    
    
    
}
