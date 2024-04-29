<%-- 
    Document   : Checkout0
    Created on : 8 Jun, 2021, 4:15:47 PM
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
        <link href="css/table.css" rel="stylesheet" type="text/css"/>
        <style>
            
           
            
            
            .Confirm{
                text-align: center;
                font-family: sans-serif;
                
/*                position: relative;*/
                left: 50%;
            }
            
            .order, .Confirm{
               
                width: 320px;
                height: 530px;
                background: #ebe7a8;
                margin: 0;
                padding: 30px;
/*                top: 65%;
                left: 50%;*/
                color: #fff;
                border-radius: 15px;/*
                position: absolute;
                transform: translate(-50%, -50%);*/
                box-sizing: border-box;
            }
            .order p{
                color: #17214c;
                margin: 0;
                padding: 0;
                font-weight: bold;
                }

                .order input {
                    width: 100%;
                    margin-bottom: 15px;
                    border-radius: 5px;
                }

                .order input[type="text"],.order input[type="email"] {
                    border: none;
                    background: transparent;
                    border-bottom: 1px solid #fff;
                    outline: none;
                    height: 35px;
                    color: black;
                    font-size: 15px;
                }

                .order input[type="submit"] {
                    display: block;
                    border: none;
                    outline: none;
                    height: 35px;
                    background:#e2dc86 ;
                    color: #000;
                    font-size: 20px;
                    border-radius: 20px;
                }

                .order input[type="submit"]:hover {
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
                .cen{
                    margin-left: 680px;
                }
         
            
        </style>
    </head>
    <body>
        <form action="Confirm_detail" method="post">
            
            
            
            <div class="">
                        <div>
                            <h3 class="text-center">Selected Items</h3>
   
                        </div>
                        <div class="cart-body">
   
                        </div>
                    </div>
            
            
              <h3 class="text-center">     <input type="checkbox" value="Confirm order"onclick="confirm_order(this)" > confirm order </h3>
        <br>
        
        <script type="text/javascript">
        function confirm_order(termsCheckBox){
    //If the checkbox has been checked
    if(termsCheckBox.checked){
        //Set the disabled property to FALSE and enable the button.
//        document.getElementById("name").disabled = false;
        document.getElementById("email").disabled = false;
        document.getElementById("address").disabled = false;
        document.getElementById("card").disabled = false;
        document.getElementById("exp").disabled = false;
        document.getElementById("vc").disabled = false;
//        document.getElementById("pay").disabled = false;
        document.getElementById("det").disabled = false;
        document.getElementById("ho").disabled = false;

        } else{
        //Otherwise, disable the submit button.
        
//        document.getElementById("name").disabled = true;
        document.getElementById("email").disabled = true
        document.getElementById("address").disabled = true
        document.getElementById("card").disabled = true;
        document.getElementById("exp").disabled = true;
        document.getElementById("vc").disabled = true;
//        document.getElementById("pay").disabled = true;
        document.getElementById("det").disabled = true;
        document.getElementById("ho").disabled = true;

    }
}
        
        </script>
            
            
            
        <div class="cen">
       <div class="Confirm order">
        
               <!--<p>User Name: <input type="text" name="uname" id="name" disabled required > </p>-->
            
               <p>User e-mail: <input type="email" name="uemail" id="email" disabled required placeholder="Enter e-mail ID" ></p>
            
               <p>User address: <input type="text" name="uaddress" id="address" disabled required placeholder="Eter Address"></p>
             
               <p>Card number: <input type="text" name="cno" id="card" disabled required placeholder="Enter Card no."></p>
               
               <p>Card Expiry:  <input type="text" name="exp" id="exp" disabled required placeholder="xx / xxx"> </p>
            
            <p>CVV number:<input type="text" name="cvv" id="vc" disabled required placeholder="xxx"> </p>
            
            <p> Card Holder name: <input type="text" name="holder" id="ho" disabled required placeholder="Enter Card Holder Name"></p>
            <input type="submit" value="Confirm details" id="det" disabled>
       </div>  </div>
      
            <br><br>
            
            
            
            
        </form>
    </body>
</html>
