<%-- 
    Document   : login
    Created on : 06-Dec-2023, 8:23:28 PM
    Author     : rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@include file="all_component/all_css.jsp" %>
    </head>
    <body>
        <%@include file="all_component/header.jsp" %>
        <div class="container-fluid div-color">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-4">
                        <div class="card-header text-center text-white bg-custom">
                            <i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>                
                            <h4>Login</h4>
                        </div>

                        <%                            String msg = (String) session.getAttribute("login");

                            if (msg != null) {
                        %>
                        <div class="alert alert-danger" role="alert">
                            <%=msg%>
                        </div>
                        <%
                                session.removeAttribute("login");
                            }
                        %>

                        <%
                            String withoutlogin = (String) session.getAttribute("login_error");

                            if (withoutlogin != null) {
                        %>
                        <div class="alert alert-danger" role="alert">
                            <%=withoutlogin%>
                        </div>
                        <%
                                session.removeAttribute("login_error");
                            }
                        %>
                        
                          <%
                            String logoutmsg = (String) session.getAttribute("logoutmsg");

                            if (logoutmsg != null) {
                        %>
                        <div class="alert alert-success" role="alert">
                            <%=logoutmsg%>
                        </div>
                        <%
                                session.removeAttribute("logoutmsg");
                            }
                        %>


                        <div class="card-body">
                            <form action="LoginServlet" method="post">

                                <div class="form-group">
                                    <label>Enter Email</label>
                                    <input type="email" name="uemail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Enter Password</label>
                                    <input type="password" name="upassword" class="form-control" id="exampleInputPassword1">
                                </div>

                                <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div> 

        <div class="container-fluid bg-dark">
    
    <p class="text-center text-white">Note: Any error occur then contact Rahul. Designed by Rahul Durgapal</p>
    
    <p class="text-center text-white">All Right Reserved @codewithrahul-2023-2024</p>
    
    
</div>


    </body>
</html>
