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
        <title>Signup</title>
        <%@include file="ABC/cdn.jsp" %>
        <link href="css/Signup.css" rel="stylesheet" type="text/css"/>
        <style>
            body{
            background-image: url(IMG/100.jpg)
            }
            
        </style>
    </head>
    <body>
        <p style="text-align: center">.....</p>
        <div class="pqr">
            <div class="lp box">
        
        <form action="Signup" method="post">
            
            <p>Name:</p>
            <i class="bi bi-person"></i> <input type="text" name="Username" placeholder="Enter Full name" required> 
            <p>Email:</p> 
            <i class="bi bi-envelope"></i><input type="email" name="email" placeholder="Enter email address" required > 
            <%--<p>Date of Birth: <input type="date" name="dob" placeholder="Enter DOB D/M/Y" > </p>--%>

            <p>Mobile no.:</p> 
            <i class="bi bi-telephone"></i><input type="text" name="Mobile no." placeholder="Enter Mobile no." required> 
            <p>Age: </p>
            <input type="text" name="Age" placeholder="Enter Age" required> 
            <p>Address:</p> 
            <i class="bi bi-house"></i><textarea name="Address" rows="3" cols="28" placeholder="Enter Address" required></textarea>

            <p>Security Question</p>
            <select name="Security question">
                <option value="--Select question--" hidden>--Select question--</option>
                <option value="first school"> first school</option>
                <option value="fav food item"> fav food item</option>
                <option value="Your fav anime chracter">Your fav anime chracter</option>
                <option value="nick name">nick name</option>
               
            </select>
            <p>Answer:</p> 
            <input type="text" name="Answer" placeholder="Enter answer" required> 
            <p>Password:</p> 
            <i class="bi bi-key"></i><input type="password" name="Password" placeholder="Enter Password" required> 
             <input type="submit" value="Signup" id="sup"> <br> <input type="reset" value="Clear">
             <a href="Login.jsp">Already have an account?</a>
            
        </form>
            </div></div>
            <br>
           
    </body>
</html>
