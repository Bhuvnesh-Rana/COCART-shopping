<%-- 
    Document   : Error
    Created on : 10 May, 2021, 4:26:02 PM
    Author     : RANA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
        <%@include file="ABC/cdn.jsp" %>
        <style>
            
             .indi2{
                 font-family: sans-serif;
                 font-weight: 700;
                 font-size: 40px;
    text-align: center;
    position: absolute;
    top: 50%;
    left: 50%;
    /*display: flex;*/
    transform: translate(-50%,-50%);
    width: 80%;
    
}   
            .text4{
    font-size: 30px;
    font-weight: 700;
    letter-spacing: 5px;
    margin-top: 23px;
    background: linear-gradient(to right,#f32170,#ffeb07,#2196f3,#f32170,#ffeb07,#2196f3);
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    position: relative;
    
    animation: text 3s 1;
}

@keyframes text{
    0%{
        color: black;
        margin-bottom: -50px;
        
    } 
    30%{
        letter-spacing: 25px;
        margin-bottom: -50px;
    }
    
    80%{
        letter-spacing: 8px;
         margin-bottom: -50px;
    }
    
}
#we a{
    position: absolute;
    margin-left: 300px
}
            
            
        </style>
    </head>
    <body>
        <img src="IMG/er1.png" style="margin-left: 520px; margin-top: 30px" alt="daaaa" height="300px" >
        <div class="indi2">
            <h1 class="text4">Entered details are wrong!!</h1>
            <a href="index.jsp" id="we" style="font-size: 15">Go back to home page.</a>
        </div>
<!--        <button type="button"  data-toggle="modal" data-target="#exampleModalScrollable"
        style="margin-left: 1400px; margin-top: 180px; background-color: #d5ca2b; border-radius: 10px; font-family: sans-serif;
        font-size: 20px; outline: none; display: block; border: none; "  >See Shop id</button>

 Modal 
<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <h5 class="modal-title" id="exampleModalScrollableTitle" style="margin-left: 190px">Shop id</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          
          Enterd details are wrong
</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>-->
    </body>
</html>
