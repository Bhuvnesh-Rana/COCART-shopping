<%-- 
    Document   : Forgot_password
    Created on : 10 May, 2021, 3:55:30 PM
    Author     : RANA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
        <link href="css/stylesu.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
        <div class="container">
            <div class="regboxfg box">
        <form action="Forgot_password" method="post">
            <p>Name:</p>
            <i class="bi bi-person"></i> <input type="text" name="Username" placeholder="Enter Full name" required>
             <p>Email:</p> 
            <i class="bi bi-envelope"></i><input type="email" name="email" placeholder="Enter email address" required ><br>
            <p>Security Question</p>
            <select name="Security question" style="background-color: #ffccbc; border: none">
                <option value="--Select question--" hidden>--Select question--</option>
                <option value="first school"> first school</option>
                <option value="fav food item"> fav food item</option>
                <option value="Your fav anime chracter">Your fav anime chracter</option>
                <option value="nick name">nick name</option>
               
            </select>
            <p>Answer:</p> 
            <input type="text" name="Answer" placeholder="Enter answer" required>
            <p>New Password:</p> 
            <i class="bi bi-key"></i><input type="password" name="Password" placeholder="Enter new password" required> 
            <input type="submit" value="Save" id="save">
            
            
            
        </form>
<!--            </div></div>
        <script src="JS/Script.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            
            $("#save").click(function (){
                swal({
                        title: "Password changed Successfully!!",
                      //  text: "You clicked the button!",
                        icon: "success",
                       // button: "Continue shopping",
//                    }).then(function() {
//                            window.location = "Home_Page0.jsp";
                       });
               
            });
        </script>-->
        
    </body>
</html>
