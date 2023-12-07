<%-- 
    Document   : index
    Created on : 06-Dec-2023, 8:23:01 PM
    Author     : rahul
--%>


<%@page import="com.db.DBConnect,java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home </title>
        <style>
            .back-img{
                background: url("images/enote.jpg");
                width: 100%;
                height: 80vh;
                background-position: center; /* Center the image */
                background-repeat: no-repeat; /* Do not repeat the image */
                background-size: cover;
            }
        </style>
        <%@include file="all_component/all_css.jsp" %>
        
        
    </head>
    <body>
        
        <%@include file="all_component/header.jsp" %>
        <%
            Connection con = DBConnect.getConnection();
            System.out.println(con);
            %>

        <div class="container-fluid back-img">
          
            <div class="text-center">
                <h1 class="text-white"><i class="fa fa-home" aria-hidden="true"></i> E Notes-Save Your Notes</h1>
                <a href="login.jsp" class="btn btn-light"><i class="fa fa-user-circle" aria-hidden="true"></i> Login</a>
            <a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
            </div>
            
        </div>
        
         <%@include file="all_component/footer.jsp" %> 
    </body>
</html>
