<%-- 
    Document   : Admin-Users
    Created on : 10 May, 2021, 12:22:58 PM
    Author     : RANA
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Users</title>
        <%--<%@include file="ABC/cdn.jsp" %>--%>
        <!--<link href="css/header.css" rel="stylesheet" type="text/css"/>-->
        <link href="css/table.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <h1 style="text-align: center" >Users</h1>
        
        <input  type="text" id="myInput" size="25" style="text-align: center; margin-left: 730px;
               border-width:medium; border-color: #000; border-radius: 10px;outline: none" onkeyup="myFunction()" 
               placeholder="Search User name" title="Type in a name">
        <br><br><br><br>
        
        <!--<div class="xyz">--> 
        <table id="table">
            <tr>
                <th> User ID</th>
                <th>Name</th>
                <th>E-mail</th>
                <th> Mobile no. </th>
                <th>Age</th>
                <th>Address</th>
                <th>Action</th>
            </tr>
            
            
            <%
            
             Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
            String query = "select * from user_detail";
            Statement stmt = con.createStatement();
            ResultSet rs =  stmt.executeQuery(query);
            
            while(rs.next())
            {
                String id = rs.getString("id");
               
            
                %>
             <tr>
                        <td><%=rs.getString("id")%></td>
                        <td><%=rs.getString("name") %></td>
                        <td><%=rs.getString("email") %></td>
                        <td><%=rs.getString("mobile") %></td>
                        <td><%=rs.getString("age") %></td>
                        <td><%=rs.getString("address") %></td>
                        <td><a href="Admin_users?id=<%=id%>">remove</a> </td>
                       <%-- <td><input type="submit" value="Remove"></td>          --%>          
             </tr>
            
             
            <%
                }
            %>
            
          </table><br><br>
        <!--</div>-->
        
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
        
        
    </body>
</html>
