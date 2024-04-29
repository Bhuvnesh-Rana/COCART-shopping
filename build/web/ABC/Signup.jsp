<%-- 
    Document   : Signup
    Created on : 7 May, 2021, 11:45:43 AM
    Author     : RANA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="#" method="post">
            <p>Name:</p>
            <input type="text" name="Username" placeholder="Enter Full name" required> 
            <p>Email:</p> 
            <input type="email" name="email" placeholder="Enter email address" required > 
            <%--<p>Date of Birth: <input type="date" name="dob" placeholder="Enter DOB D/M/Y" > </p>--%>

            <p>Mobile no.:</p> 
            <input type="text" name="Mobile no." placeholder="Enter Mobile no." required> 
            <p>Age: </p>
            <input type="number" name="Age" placeholder="Enter Age" required> 
            <p>Address:</p> 
            <textarea name="Address" rows="3" cols="32" placeholder="Enter Address" required></textarea> 
            <p>Password:</p> 
            <input type="password" name="Password" placeholder="Enter Password" required> 
             <input type="submit" value="Signup"> <br> <input type="reset" value="Clear">
            
        </form>
    </body>
</html>
