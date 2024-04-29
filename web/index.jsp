<%-- 
    Document   : index
    Created on : 6 May, 2021, 11:36:41 AM
    Author     : RANA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <%@include file="ABC/cdn.jsp" %>
        <link href="css/header-index.css" rel="stylesheet" type="text/css"/>
        <link href="css/carousel.css" rel="stylesheet" type="text/css"/>
        <!--<link href="css/Admin-main.css" rel="stylesheet" type="text/css"/>-->
        <style>
            body{
                background-color: #e8eaf6;
            }
         .indi{
    text-align: center;
    position: absolute;
    /*top: 50%;*/
    left: 50%;
    transform: translate(-50%,-50%);
    width: 80%;
    
}   
            .text3{
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
            
        </style>
    </head>
    
    <body>
        
        <%@include file="ABC/header-index.jsp" %>
        <br>
        <div class="indi">
        <h1 class="text3" >Stay At Home</h1>
        </div><br><br>
        <p style="background-color: #616161; color: #fff; font-family: sans-serif; font-size: 25px; font-stretch: 10px">
<marquee behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();" scrollamount="20" hspace="" 
             scrolldelay="0s">  * Covid update * AIIMS Delhi to start recruitment for clinical trials on 6-12 age group children and 2-6 
    age group after that.  Black fungus cases in Maharashtra soar to 7,395.  Total vaccine doses administered so far: 25,48,49,301. 
    Nirmal Kaur, Milkha Singh's wife, dies after fighting Covid-19 for 3 weeks at Fortis hospital Mohali.</marquee>
</p>




   

    <br><br><%@include file="ABC/Carousel.jsp" %> <br><br>
    <div class="row">
        <div class="col">
            <div class="leftside">
                
            <p style="padding-left: 100px; text-align: justify; font-family: sans-serif; font-size: 25px">At the present time when the world is grappled in such unprecedented 
            crisis like that of Covid 19, thereby making it difficult for quite a
            number of people especially the senior citizens to go out for shopping 
            by themselves. So COCART is an effort to address to daily requirements of 
            the people by providing contact less door to door delivery of groceries
            and medicines from the nearby shops and also by buying from your local store, delivery would be fast.  </p>
            
            <img class="d-block w-50" src="IMG/3.jpg" alt="daaaa" style="margin-left: 150px; margin-top: 50px; border-radius: 5px" >
            <br>
                
            </div>
        </div>
        <div class="col">
            <div class="rightside"> 
                <img class="d-block w-50" src="IMG/4.jpg" alt="daaaa" style="margin-left: 150px; margin-top: 50px; border-radius: 5px" >
                <br>
            <p style=" text-align: justify; padding-right: 90px; font-family: sans-serif; font-size: 25px">As by the information by the government, world's leading scientists and the 
               World health organization (WHO) this pandemic can end only if we maintain social distance,  following covid appropriate behaviour and getting vaccinated. (Get vaccinated
               <a href="https://www.cowin.gov.in/home">here.</a>). This pandemic has pushed many people below the poverty line they are depndent on the donation and the 
               government schemes. You can donate from the links given below in the footer. All the donation links are varified.
               </p>
            
            
            </div>
        </div>

        
            
            
    </div>
    <%@include file="ABC/Footer.jsp" %>
    </body>
</html>


<!--        <h2>* Covid update * Covishield better than the covaxin data by the gov. panel * Covid Update *</h2>-->
<!--<div id="maindiv" >
    
<div id="div1">
    &nbsp;* Covid update * AIIMS Delhi to start recruitment for clinical trials on 6-12 age group children and 2-6 age group after that.  Black fungus cases in Maharashtra soar to 7,395.  Total vaccine doses administered so far: 25,48,49,301. Nirmal Kaur, Milkha Singh's wife, dies after fighting Covid-19 for 3 weeks at Fortis hospital Mohali.
  </div>
  <div id="div2">
    &nbsp;* Covid update * AIIMS Delhi to start recruitment for clinical trials on 6-12 age group children and 2-6 age group after that.  Black fungus cases in Maharashtra soar to 7,395.  Total vaccine doses administered so far: 25,48,49,301. Nirmal Kaur, Milkha Singh's wife, dies after fighting Covid-19 for 3 weeks at Fortis hospital Mohali.
  </div>
</div>-->