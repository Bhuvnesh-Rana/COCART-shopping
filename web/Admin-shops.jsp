<%-- 
    Document   : Admin-shops
    Created on : 12 May, 2021, 6:59:53 PM
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
        <title>Admin shops</title>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <link href="css/table.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1 style="text-align: center">Shops</h1>
        <input  type="text" id="myInput" size="25" style="text-align: center; margin-left: 730px;
               border-width:medium; border-color: #000; border-radius: 10px;outline: none" onkeyup="myFunction()" 
               placeholder="Search for area.." title="Type in a name">
                <button class="add" style="margin-left: 1400px" value="Admin-shops-add.jsp" onclick="window.location=this.value">Add Shops</button>

<br><br>
        <!--<div class="xyz">--> 
            <table id="table">
            <tr>
                <th>Shop ID</th>
                <th> Shop name</th>
                <th>Booth No.</th>
                <th>Area</th>
                <th>Shop type</th>
                <th>Action</th>
                
            </tr>
            
            
            <%
            
             Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
            String query = "select * from shops";
            Statement stmt = con.createStatement();
            ResultSet rs =  stmt.executeQuery(query);
            
            while(rs.next())
            {
                String id = rs.getString("id");
               
            
                %>
             <tr>
                        <td><%=rs.getString("id")%></td>
                        <td><%=rs.getString("shop_name")%></td>
                        <td><%=rs.getString("booth_no") %></td>
                        <td><%=rs.getString("area") %></td>
                        <td><%=rs.getString("shop_type") %></td>
                        
                        <td><a href="Admin_shops?id=<%=id%>">Remove</a> </td>
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
    td = tr[i].getElementsByTagName("td")[3];
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
