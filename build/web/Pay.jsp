<%-- 
    Document   : Pay
    Created on : 25 May, 2021, 8:16:27 PM
    Author     : RANA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="ABC/cdn.jsp" %>
        <%@include file="XYZ.jsp" %>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="" method="post">
            <p>User Name:</p>
            <input type="text" name="uname">
            <p>User e-mail:</p>
            <input type="email" name="uemail">
            <p>Card no.   <>  Card expiry</p>
            <input type="text" name="cno"> <input type="text" name="exp">
            <p>CVV</p>
            <input type="text" name="cvv">
            <br><br>
            <input type="submit" value="Confirm Payment">
            
            
          
                        <div class="cart-body">
   
                        </div>
            
            
        </form>
    </body>
</html>
