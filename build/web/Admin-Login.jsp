<%-- 
    Document   : Admin-Login
    Created on : 7 May, 2021, 7:01:53 PM
    Author     : RANA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <%@include file="ABC/cdn.jsp" %>
        <link href="css/stylelp.css" rel="stylesheet" type="text/css"/>
         <style>
            body{
            background-image: url(IMG/100.jpg)
            }
            
        </style>
    </head>
    <body>
        <div class="pqr">
            <div class="lg box">
         <form action = "Admin_Login"   method = "post">
            <p> Name: </p> 
       <i class="bi bi-person"></i> <input type= "text" name ="username" placeholder="Enter name" required>
             <p> Password: </p>
            <i class="bi bi-key"></i><input type= "password" name ="password" placeholder="Enter password" required>
            <br><br>
            <input type="submit" value="Login"> 
         </form>
            </div></div>
    </body>
</html>
