<%-- 
    Document   : Admin-items-add
    Created on : 11 May, 2021, 12:47:26 PM
    Author     : RANA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add items</title>
        <link href="css/stylelp.css" rel="stylesheet" type="text/css"/>
        <%@include file="ABC/cdn.jsp" %>
        <link href="css/table.css" rel="stylesheet" type="text/css"/>
<!--        <style>
            
            .bg-modal{
                width: 100%;
                height: 100%;
                background-color: rgba(0,0,0,0.7);
                position: absolute;
                top: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                display: none;
                position: relative;
            }
            .modal-content{
                width: 500px;
                height: 300px;
                background-color: white;
                border-radius: 5px;
            }
            .close{
                position: absolute;
                top: 0;
            }
            
        </style>-->
    </head>
    <body>
        
        <!-- Button trigger modal -->
<!--<button type="button"  data-toggle="modal" data-target="#exampleModalScrollable"
        style="margin-left: 1400px; margin-top: 180px; background-color: #d5ca2b; border-radius: 10px; font-family: sans-serif;
        font-size: 20px; outline: none; display: block; border: none; "  >See Shop id</button>-->

<!-- Modal -->
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
                         <table id="table">
            <tr>
                <th>Shop ID</th>
                <th> Shop name</th>
                
                <th>Area</th>
                <th>Shop type</th>
                
                
            </tr>
            
            
            <%
            
             Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
            String query = "select id, shop_name, area, shop_type from shops";
            Statement stmt = con.createStatement();
            ResultSet rs =  stmt.executeQuery(query);
            
            while(rs.next())
            {
                String id = rs.getString("id");
               
            
                %>
             <tr>
                        <td><%=rs.getString("id")%></td>
                        <td><%=rs.getString("shop_name")%></td>
                        
                        <td><%=rs.getString("area") %></td>
                        <td><%=rs.getString("shop_type") %></td>
                        
                        
                       <%-- <td><input type="submit" value="Remove"></td>          --%>          
             </tr>
            
             
            <%
                }
            %>
            
          </table>
                 
      </div>
<!--      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>-->
    </div>
  </div>
</div>
        
        
        
        
        <div class="pqr">
            <div class="lg box">
        <form action="Admin_items_add" method="post">
            
        <p>Shop ID:</p>
        <input type="text" name="type" placeholder="Enter Shop id" required>  
        
        <p>Item Name:</p>
        <input type="text" name="item" placeholder="Enter Item name" required>
        <p>Item Price:</p>
        <input type="text" name="price" placeholder="Enter Item price in Rs" required>
        <br><br>
        <input type="submit" value="Add">
        <!--<button type="button"  data-toggle="modal" data-target="#exampleModalScrollable" >See Shop id</button>-->
        <input type="button" data-toggle="modal" data-target="#exampleModalScrollable" value="SHop id's">
        </form>
                
            </div></div>
         
        
       
    </body>
</html>
