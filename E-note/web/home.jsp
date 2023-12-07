<%-- 
    Document   : home
    Created on : 07-Dec-2023, 12:25:58 AM
    Author     : rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    UserDetail user1 = (UserDetail) session.getAttribute("user");
    if (user1 == null){
        response.sendRedirect("login.jsp");
        session.setAttribute("login_error","Plese Login...");
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
    
        <div class="conatiner-fluid">
                <%@include file="all_component/header.jsp" %>
            <div class="card py-5">
                <div class="card-body text-center">
                    <img src="images/home.jpg" class="img-fluid mx-auto" alt="alt" style="max-width: 300px;"/>
                    <h1>START TAKING YOUR NOTES</h1>
                    <a href="addnotes.jsp" class="btn btn-outline-primary">Start Here</a>
                </div>
            </div>
            
        </div>
                <%@include file="all_component/footer.jsp" %>
    </body>
</html>
