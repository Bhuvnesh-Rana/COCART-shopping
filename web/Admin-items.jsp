<%-- 
    Document   : Admin-items
    Created on : 11 May, 2021, 12:37:13 PM
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
        <title>Admin item</title>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <link href="css/table.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
     
        <h1 style="text-align: center">Shop Items</h1>
        <input type="text" size="25;" style="text-align: center; margin-left: 730px;
               border-width:medium; border-color: #000; border-radius: 10px; outline: none "  id="mynput" onkeyup="myFunction()" placeholder="Search for Item Names.." title="Type in a name">
        <button class="add" value="Admin-items-add.jsp" style="margin-left: 1450px" onclick="window.location=this.value">Add Items</button>
        <br><br>
        <!--<div class="xyz">--> 
            <table id="table" >
            <tr>
                <th>Shop ID</th>
                <th> Item ID</th>
                <th>Item name</th>
                <th>Item price</th>
                <th>Action</th>
                
            </tr>
            
            
            <%
            
             Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
            String query = "select * from item";
            Statement stmt = con.createStatement();
            ResultSet rs =  stmt.executeQuery(query);
            
            while(rs.next())
            {
                String id = rs.getString("item_id");
               
            
                %>
             <tr>
                        <td><%=rs.getString("shop_id")%></td>
                        <td><%=rs.getString("item_id")%></td>
                        <td><%=rs.getString("item_name") %></td>
                        <td><%=rs.getString("item_price") %></td>
                        
                        <td><a href="Admin_items?id=<%=id%>">Remove</a> </td>
                       <%-- <td><input type="submit" value="Remove"></td>          --%>          
             </tr>
            
             
            <%
                }
            %>
            
          </table><br><br><br>
          <script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("mynput");
  filter = input.value.toUpperCase();
  table = document.getElementById("table");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[2];
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
            
        <!--</div>-->
    </body>
</html>
