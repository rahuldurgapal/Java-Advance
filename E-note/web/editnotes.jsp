<%-- 
    Document   : editnotes
    Created on : 07-Dec-2023, 10:41:50 PM
    Author     : rahul
--%>

<%@page import="com.users.Post"%>
<%@page import="com.Dao.PostDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    UserDetail user = (UserDetail) session.getAttribute("user");
    if (user == null){
        response.sendRedirect("login.jsp");
        session.setAttribute("login_error","Plese Login...");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
        <%@include file="all_component/all_css.jsp" %>
    </head>
    <body>
        
        <%
            int note_id = Integer.parseInt(request.getParameter("note_id"));
            
            PostDao pd = new PostDao();
           Post ps= pd.getDataById(note_id);
            %>
        
        
        <div class="container-fluid">
            <%@include file="all_component/header.jsp" %>
            <h1 class="text-center">Edit Your Notes</h1>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form action="EditNoteServlet" method="post">

                            <input type="hidden" value="<%= note_id %>" name="noteid">
                            <div class="form-group">

                            

                              <label for="exampleInputEmail1">Enter Title</label>
                              <input type="text" class="form-control" value="<%= ps.getTitle() %>" name="title" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">

                            </div>


                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter Content</label>
                                <textarea rows="9" cols="" name="content"  class="form-control" required="required"><%=ps.getContent() %></textarea>
                            </div>
                            <div class="container text-center">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>

        <%@include file="all_component/footer.jsp"  %>
    </body>
</html>
