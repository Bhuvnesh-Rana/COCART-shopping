<%-- 
    Document   : Admin
    Created on : 7 May, 2021, 2:57:58 PM
    Author     : RANA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link href="css/Admin-sidebar.css" rel="stylesheet" type="text/css"/>
        <link href="css/Admin-main.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
        <%@include file="ABC/cdn.jsp" %>
        
        <style> 
            
            body{
                background-color: #fff;
                
            } 
        
        </style> 
        
    </head>
    
    <body>
        <div class="sidenav"><br><br><br><br><br><br><br><br>
  <a href="Admin-Users.jsp"><i class="bi bi-people-fill">Users</i></a>
  <br>
   <a href="Admin-shops.jsp"><i class="bi bi-shop">Shops</i></a>
   <br>
  <a href="Admin-items.jsp"><i class="bi bi-bag">Items</i></a>
  <br>
  <a href="Admin-orders.jsp"><i class="bi bi-clipboard">Orders</i></a>
  <br>
  <a href="index.jsp"><i class="bi bi-box-arrow-right">Logout</i></a>
</div>

<!-- Page content -->
<div class="main" >
  <div class="container">
      <span class="text1">Welcome</span>
      <span class="text2">Admin</span>
  </div>
    <br>
    <div>
        <div class="conainer">
        <div class="rox">
            <div class="icon"><i class="bi bi-people-fill"></i>

<br>
           <%
            try
            {
             Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
            String query = "select count(*) from user_detail";
            Statement stmt = con.createStatement();
            ResultSet rs =  stmt.executeQuery(query);
            
           String users="";
                        while(rs.next()){
                        users = rs.getString(1);%>
                        </div>
                        <div class="content" >
                            <h2>Total Users</h2>
                        <%out.println(users);
                        %>
                        </div>
                        
<!--                        <button style="background-color: #ff0; padding: 30px 20px; color: grey;border-radius: 15px;  
                                "
                                type="button">Total users:</button>-->
<%}}
            catch (Exception e){
                    e.printStackTrace();
                    }
                %>
                        </div>
        
                <div class="rox">
                    <div class="icon"><i class="bi bi-shop"></i>
                <%    
                   try
            {
             Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
            String query = "select count(*) from shops";
            Statement stmt = con.createStatement();
            ResultSet rs =  stmt.executeQuery(query);
            
           String Shops="";
            while(rs.next()){
            Shops = rs.getString(1);%>
            </div>
            <div class="content" >
                            <h2>Total Shops</h2>
            
            <%out.println(Shops);
            %>
            </div>
            <!--<button style="background-color: #ff0; padding: 30px 20px; color: grey;border-radius: 15px; margin-left: 1000px; position: static;  
                                "
                                type="button">Total Shops:</button>-->
<%}}
            catch (Exception e){
            e.printStackTrace();
            }   
   %>                 
                    
                    </div>
   
   
   
        <div class="rox">
            <div class="icon"><i class="bi bi-bag"></i>
     
                <%    
                   try
            {
             Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
            String query = "select count(*) from item";
            Statement stmt = con.createStatement();
            ResultSet rs =  stmt.executeQuery(query);
            
           String Items="";
                    while(rs.next()){
                    Items = rs.getString(1);%>
            </div>
                    <div class="content" >
                            <h2>Total Items</h2>
                    <%out.println(Items);
%>
                    </div>
<!--<button style="background-color: #ff0; padding: 30px 20px; color: grey;border-radius: 15px;  
                                "
                                type="button">Total Items:</button>-->
<%}}
            catch (Exception e){
e.printStackTrace();
}   
   %>                 
                    
                </div>
   <div class="rox">
            <div class="icon"><i class="bi bi-clipboard"></i>
   
   
     <!--<div>-->
                <%    
                   try
            {
             Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
            String query = "select count(*) from orders";
            Statement stmt = con.createStatement();
            ResultSet rs =  stmt.executeQuery(query);
            
           String Orders="";
            while(rs.next()){
            Orders = rs.getString(1);%>
            </div>
                <div class="content" >
                            <h2>Total Orders</h2>
            <% out.println(Orders);
            %>
                </div>
            <!--<button style="background-color: #ff0; padding: 30px 20px; color: grey;border-radius: 15px; margin-left: 1000px;  
                                "
                                type="button">Total orders:</button>-->
<%}}
            catch (Exception e){
            e.printStackTrace();
            }   
   %>                 
                    
   </div></div> </div>
    
    
    
</div>
    </body>
</html>
