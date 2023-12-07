<%-- 
    Document   : addnotes
    Created on : 07-Dec-2023, 11:16:09 AM
    Author     : rahul
--%>

<%@page import="com.users.UserDetail"%>
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
        <title>Add Notes</title>
        <%@include file="all_component/all_css.jsp" %>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="all_component/header.jsp" %>
            <h1 class="text-center">Add Your Notes</h1>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form action="AddNoteServlet" method="post">

                            <div class="form-group">

                                <%   UserDetail usd = (UserDetail) session.getAttribute("user");
          if (us != null) {%>
                                <input type="hidden" value="<%= usd.getId()%>" name="uid"> 
                                <% }

                                %>

                                <label for="exampleInputEmail1">Enter Title</label>
                                <input type="text" class="form-control" name="title" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">

                            </div>


                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter Content</label>
                                <textarea rows="9" cols="" name="content" class="form-control" required="required"></textarea>
                            </div>
                            <div class="container text-center">
                                <button type="submit" class="btn btn-primary">Add Notes</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>

        <%@include file="all_component/footer.jsp"  %>
    </body>
</html>
