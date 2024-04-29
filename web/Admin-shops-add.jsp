<%-- 
    Document   : Admin-shops-add
    Created on : 12 May, 2021, 7:08:34 PM
    Author     : RANA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shops add</title>
        <link href="css/stylelp.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="pqr">
            <div class="lg box">
        <form action="Admin_shops_add" method="post">
            
        <p>Shop Name:</p>
        <input type="text" name="name" placeholder="Enter Shop name" required>  
        
        <p>Booth number :</p>
        <input type="text" name="booth" placeholder="Enter booth no." required>
        <p>Area:</p>
        <input type="text" name="area" placeholder="Enter area" required>
        
        <p>Shop type:</p>
        <input type="text" name="type" placeholder="Enter Shop type" required>
        <br><br>
        <input type="submit" value="Add Shop">
        </form>
            </div></div>
    </body>
</html>
