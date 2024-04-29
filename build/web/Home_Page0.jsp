
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
        <title>Home</title>
        <%@include file="ABC/cdn.jsp" %>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <link href="css/table.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body style="background-color:#fff ">
        <%@include file="ABC/header.jsp" %>
        
        <% //String name = (String)session.getAttribute("username");
        //out.println(name);
        %>
        
       <%--  <select  name="profile" onchange="location=this.value" >
            <option value="1" style="background-image: url(/img/lp.jpg)"> </option>
        
         <option value="<%out.println("Welcome "+name);%>"><%out.println(name);%></option>
          <option value="Profile.jsp">Profile</option>
            <option value="login.jsp">logout</option>
        </select> --%><br><br>
       <div class="mid" >
           <form action="Home_Page0.jsp" method="post">
            City: <select name="City">
                <option value="chd">Chandigarh</option>
            </select>
                Area: <select name="Area">
                    <option value="Select area" hidden>--Select area--</option>
                    <option value="Sector 1"> Sector 1 </option>
                    <option value="Sector 2"> Sector 2 </option>
                    <option value="Sector 3"> Sector 3 </option>
                    <option value="Sector 7"> Sector 7 </option>
                    <option value="Sector 9"> Sector 9 </option>
                    <option value="Sector 15"> Sector 15 </option>
                    <option value="Sector 16"> Sector 16 </option>
                    <option value="Sector 17"> Sector 17 </option>
                    <option value="Sector 22"> Sector 22 </option>
                    <option value="Sector 27"> Sector 27 </option>
                    <option value="Sector 31"> Sector 31 </option> 
                    <option value="Sector 34"> Sector 34 </option>        
                    <option value="Sector 36"> Sector 36 </option>        
                    <option value="Sector 38"> Sector 38 </option>        
                    <option value="Sector 41"> Sector 41 </option>        


                       </select>
                Shop Type: <select name="Shop type">
                    <option value="Select Shop type" hidden>--Select Shop Type--</option>
                    <option value="Grocery">Grocery</option>
                    <option value="Medicos">Medicos</option>
                </select>
                <br><br>
                <input type="submit" value="Submit">
             </form>
    </div>
           <br><br><br>
           <div class="xyz"> 
            
               <table id="table">
            <tr>
                <th> Shop ID</th>
                <th> Shop Name</th>
                <th> Booth no.</th>
                <th> Area </th>
                <th>Shop Type</th>
              <th>Select shop</th>
            </tr>
               
        <%
            String a = request.getParameter("Area");
            if (a !=null)
                {
                   // out.println("Selected Area is : "+a);
                }
            if (a == "Select area")
            {
               // out.println("Select valid area");
            }
            {
            
            }
            String b = request.getParameter("Shop type");
            if (b !=null)
            {
              //  out.print("Selected shop type is :" +b);
            }
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval = true","root","root");
            String query = "select * from shops where area = '"+a+"'and shop_type = '"+b+"'" ;
            Statement stmt = con.createStatement();
            ResultSet rs =  stmt.executeQuery(query);
            
            while(rs.next())
            {
                String id = rs.getString("id");
            
                %>
               
                
               
                    <tr>
                        <td><%=rs.getString("id")%></td>
                        <td><%=rs.getString("shop_name") %></td>
                        <td><%=rs.getString("booth_no") %></td>
                        <td><%=rs.getString("area") %></td>
                        <td><%=rs.getString("shop_type") %></td>
                        <td><a href="Shop_item.jsp?id=<%=id%>">Select</a></td>     
                    </tr>
            
             
            <%
                }
            %>
            
            
        
                  
        </table>
             </div>
            <br><br><br><br><br><br><br><br><br>
            <%@include file="ABC/Footer.jsp" %>
    </body>
</html>
   
