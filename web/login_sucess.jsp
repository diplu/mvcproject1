<%-- 
    Document   : login_sucess
    Created on : 6 Feb, 2018, 1:40:52 PM
    Author     : Vishal
--%>
<%@page import="mvc.LoginBean" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                background-color:red;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         
        
        <p>WOOOOOW IT'S COOL....SUCCESSFUL</p>
        <%
            LoginBean bean=(LoginBean)request.getAttribute("bean");
            out.print("<br/>WELCOME TO OUR PAGE.....");
            out.print("<br/>"+bean.getName());
            out.print("<br/>"+bean.getEmail());
            out.print("<br/>"+bean.getDepartment());
            
            %>
    </body>
</html>
