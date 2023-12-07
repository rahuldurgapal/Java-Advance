<%-- 
    Document   : shownotes
    Created on : 07-Dec-2023, 9:04:44 PM
    Author     : rahul
--%>

<%@page import="java.util.List"%>
<%@page import="com.users.Post"%>
<%@page import="com.Dao.PostDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    UserDetail user2 = (UserDetail) session.getAttribute("user");
    if (user2 == null) {
        response.sendRedirect("login.jsp");
        session.setAttribute("login_error", "Plese Login...");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_component/all_css.jsp" %>
    </head>
    <body>
        <%@include file="all_component/header.jsp" %>
        
         <%
            String addmsg = (String)session.getAttribute("addmsg"); 
            if(addmsg!=null)
            {
            %>
        
            <div class="alert alert-success" role="alert"><%= addmsg %></div>
            
            <% 
                session.removeAttribute("addmsg");
                }  %>
        
        <%
            String msg = (String)session.getAttribute("updatemsg"); 
            if(msg!=null)
            {
            %>
        
            <div class="alert alert-success" role="alert"><%= msg %></div>
            
            <% 
                session.removeAttribute("updatemsg");
                }  %>
                
                
                 <%
            String deletemsg = (String)session.getAttribute("deletemsg"); 
            if(deletemsg!=null)
            {
            %>
        
            <div class="alert alert-danger" role="alert"><%= deletemsg %></div>
            
            <% 
                session.removeAttribute("deletemsg");
                }  %>
                
                
                
            
        <div class="container">
            <h2 class="text-center">All Notes</h2>
            <div class="row">
                <div class="col-md-12">
                    <%                          if (user2 != null) {
                            PostDao pd = new PostDao();
                            List<Post> post = pd.getData(user2.getId());

                              for (Post po : post) {
                               
                    %>
                    
                    <div class="card mt-3">

                        <img src="images/home.jpg" class="card-img-top mt-2 mx-auto" style="max-width: 100px;">

                        <div class="card-body p-4">


                            <h5 class="card-title"><%= po.getTitle()  %></h5>
                            <p><%= po.getContent() %></p>

                            <p>
                                <b class="text-success">Published Name: <%= user2.getName()  %></b><br>
                                <b class="text-primary"></b>
                            </p>   

                            <p>
                                <b class="text-success">Published Date: <%= po.getPdte() %> </b><br>
                                <b class="text-primary"></b>
                            </p>  

                            <div class="container text-center mt-2">
                                <a href="DeleteServlet?note_id=<%=po.getId() %>" class="btn btn-danger">Delete</a>
                                <a href="editnotes.jsp?note_id=<%=  po.getId() %>" class="btn btn-primary">Edit</a>
                            </div>

                        </div>
                    </div>  
                    <% }
                          
                        } 
                    %>

                </div>
            </div>
        </div>



    </body>
</html>
