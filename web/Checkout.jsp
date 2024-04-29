<%-- 
    Document   : Checkout
    Created on : 22 May, 2021, 7:13:57 PM
    Author     : RANA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
        <%@include file="ABC/cdn.jsp" %>
        <%@include file="XYZ.jsp" %>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <style>
            
            .final input[type="submit"]{
                margin-left: 780px;
                display: block;
                    border: none;
                    outline: none;
                    height: 35px;
                    background:#e2dc86 ;
                    color: #000;
                    font-size: 20px;
                    border-radius: 20px;
            }
            .final input[type="submit"]:hover{
                border: none;
                    outline: none;
                    height: 35px;
                    background: #d5ca2b;
                    color: #fff;
                    font-size: 20px;
                    border-radius: 20px;
                    cursor: pointer;
                    transition: .3s ease-out;
            }
            
            
        </style>
        
    </head>
    <body>
<!--        <form action="abc" method="post">-->
        <br><br><br>
        <div class="">
                        <div>
                            <h3 class="text-center">Selected Items</h3>
   
                        </div>
                        <div class="cart-body"></div>
                         </div><br>
        <div class="final">
        <input  type="submit" onclick="paymentStart()" value="Confirm payment" id="pay" > 
        </div>
        
        
        <br><br><br><br><br>
        <p >  </p>
              <!--<script src="JS/Script.js"></script>-->
         <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            
            $("#pay").click(function (){
                swal({
                        title: "Your order has been placed!!",
                      //  text: "You clicked the button!",
                        icon: "success",
                        button: "Continue shopping",
                      }).then(function() {
                            window.location = "Home_Page0.jsp";
                        });
               
            });
        </script>

        
    </body>
</html>
