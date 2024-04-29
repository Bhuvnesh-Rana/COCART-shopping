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
        <title>JSP Page</title>
        <%@include file="../Admin/cdn.jsp" %>
    </head>
    <body>
         <form action = "Admin_Login"   method = "post">
            <p> Name: </p> 
        <i class="bi bi-person-circle"></i> <input type= "text" name ="username" placeholder="Enter name" required>
             <p> Password: </p>
            <input type= "password" name ="password" placeholder="Enter password" required>
            <br><br>
            <input type="submit" value="Login"> 
         </form>
    </body>
</html>
