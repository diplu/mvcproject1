<%-- 
    Document   : index1
    Created on : 11 Feb, 2018, 1:10:47 PM
    Author     : Vishal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
             <style>
        body{
        background-image:url("cool.jpg");
        background-position:center; 
        text-align:center;
        }
</style>
    </head>
    <body>
      <form action="ControllerServlet" method="post">
           name:        <input type="text" name="name"><br>
           department:  <input type="text" name="department"><br>
           email:       <input type="email" name="email"><br>
           password:    <input type="password" name="password"><br>
            <input type="submit" value="login">
        </form>
    </body>
</html>
