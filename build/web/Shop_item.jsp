<%-- 
    Document   : Shop_item
    Created on : 8 May, 2021, 12:26:17 PM
    Author     : RANA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop items</title>
        <%@include file="ABC/cdn.jsp" %>
        <%@include file="XYZ.jsp" %>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <link href="css/table.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="ABC/header-shop.jsp" %>
        <!--<form action="abc" method="post">-->
<!--            HttpSession session = request.getSession(true);
     <%--     <%String name = (String)session.getAttribute("username");%>--%>
        -->
          <%
            
          /*  PrintWriter pw = response.getWriter();
            String id = request.getParameter("id");
            
            
            int added_cart_product = 0;
            Cookie c =null; 
            response.setContentType("text/html");
            try {
                    Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
          String q = "select * from item where shop_id = ? ";
            PreparedStatement pst = con.prepareStatement(q);           
            pst.setString(1,id);
            
           
            ResultSet rs = pst.executeQuery();
            
            try
            {
                c = new Cookie(request.getParameter("id"), "1");
                response.addCookie(c);
                pw.print("Product added");
                } catch (Exception ex) {
                }
                */
                
            
            
            
            String id = request.getParameter("id");
//            out.println("Selected shop id: "+id);
              try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
          
            PreparedStatement pst = con.prepareStatement("select * from item where shop_id = ? ");           
            pst.setString(1,id);
           
            ResultSet rs = pst.executeQuery();
          
           %>
          
            
                 <%--  <button type="button" data-toggle="modal" data-target="#cart"><i class="bi bi-cart4">Cart</i></button> 
                     <a data-toggle="modal" data-target="#cart"><i class="bi bi-cart4">Cart</i></a>    --%>
                  <br><br><br>
                   <div class="xyz"> 
                       <table id="table">
            <tr>
                <th>Item ID</th>
                <th>Item Name</th>
                <th>Item Price</th>
                <th>Add to cart</th>
            </tr>
            <% while(rs.next())
            {
               String name = rs.getString("item_id");
            %>
           
             <tr> 
                        <td><%=rs.getInt("item_id") %></td>
                        <td><%=rs.getString("item_name") %></td>
                        <td><%=rs.getInt("item_price") %></td>
                     <td><button class="add_to_cartt" onclick="add_to_cart(<%= rs.getInt("item_id") %>,'<%=rs.getString("item_name") %>',<%= rs.getInt("item_price") %> )" >Add to cart</button></td> 
<!--                         <td><a href="abc?item_id=<%=name%>">Add to cart</a></td>     -->


<!--                        <td><input type="submit" value="Add to cart"></td>-->
              <!--<p>  <input type="hidden" value="<%=rs.getInt("item_id") %>"></p>-->
                        <%}%>
                    </tr>
               
                <% 
                    } catch (Exception ex) 
                  {
out.print("ex");
}
                   %>
                   <%@include file="Modal.jsp" %> 
                   </table>
            </div>
        <!--</form>-->
    </body>
</html>
<%--  <td><a href='shop_items.jsp?item=<%=rs.getInt("item_id")%>'>Add</a></td> --%>
                      <%-- <td><button type="submit" value="Scrript.js?item=<%=rs.getInt("item_id")%>" onclick="location=this.value"  >Add</button> </td>--%>