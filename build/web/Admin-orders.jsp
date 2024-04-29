<%-- 
    Document   : Admin-orders
    Created on : 7 Jun, 2021, 12:03:55 PM
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
        <title>Admin orders</title>
        <%@include file="ABC/cdn.jsp" %>
        <link href="css/table.css" rel="stylesheet" type="text/css"/>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1 style="text-align: center" >Orders</h1>
        <br>
        <input  type="text" id="myInput" size="25" style="text-align: center; margin-left: 730px;
               border-width:medium; border-color: #000; border-radius: 10px;outline: none" onkeyup="myFunction()" 
               placeholder="Search User name" title="Type in a name">
        <br><br><br><br>
         <!--<div class="xyz">--> 
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
            
             Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
            String query = "select orders.order_id , ut.name , ut.date , ut.address , orders.product , orders.total from orders inner join ut on orders.order_id=ut.u_id;";
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
                        <td><a href="Cancel_order_admin?id=<%=id%>">Cancel</a></td>
                        
                        
<!--                        <td><a href="Admin_shops?id=<%=id%>">Remove</a> </td>-->
                       <%-- <td><input type="submit" value="Remove"></td>          --%>          
             </tr>
            
             
            <%
                }
            %>
            
          </table><br><br><br>
          <script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("table");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
<!--            <button class="add" value="Admin-shops-add.jsp" onclick="window.location=this.value">Add Shops</button>-->
        <!--</div>-->
    </body>
</html>
