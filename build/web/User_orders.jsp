<%-- 
    Document   : User_orders
    Created on : 7 Jun, 2021, 10:12:51 PM
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
        <title>User orders</title>
         <%@include file="ABC/cdn.jsp" %>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <link href="css/table.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <br>
        <h3 style="text-align: center">User Orders</h3>
        <br>
        <div class="xyz"> 
            <table id="table">
            <tr>
                <th>Order ID</th>
                <th>User Name</th>
                <th>Date</th>
                <th>Address</th>
                <th>Products</th>
                <th>Total Amount</th>
                <th>Cancel Order</th>
                
                
            </tr>
            
            
            <%
            String uname = (String)session.getAttribute("username");
             Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
            String query = "select orders.order_id , ut.name , ut.date , ut.address , orders.product , orders.total from orders inner join ut on orders.order_id=ut.u_id where name = '"+uname+"';";
            Statement stmt = con.createStatement();
            ResultSet rs =  stmt.executeQuery(query);
            
            while(rs.next())
            {
                String id = rs.getString("order_id");
               
            
                %>
             <tr>
                        <td><%=rs.getString("order_id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("date")%></td>
                        <td><%=rs.getString("address")%></td>
                        <td><%=rs.getString("product")%></td>
                        <td><%=rs.getString("total") %></td>
                        <td><a href="Cancel_order?id=<%=id%>">Cancel</a></td>
                        
                        
<%--                        <td><a href="Admin_shops?id=<%=id%>">Remove</a> </td>
                        <td><input type="submit" value="Remove"></td>          --%>          
             </tr>
            
             
            <%
                }
            %>
            
          </table><br><br><br>
           </div>
    </body>
</html>

    