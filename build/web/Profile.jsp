<%-- 
    Document   : Profile
    Created on : 19 May, 2021, 1:02:18 PM
    Author     : RANA
--%>


<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link href="css/stylelp.css" rel="stylesheet" type="text/css"/>
        <style>
            
            .pqr{
                font-family: sans-serif;
                font-size: 20px;
            }
            
        </style>
    </head>
    <body>
        
         <div class="pqr">
            <div class="lp box">
                     <h1>User Profile</h1>
        <form action="Profile" method="post">
        <%String uname = (String)session.getAttribute("username");out.println("User Name:  "  +uname);%>
        
        <br><br>
        <%
            
          try 
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping?useSSL=false&allowPublicKeyRetrieval ="
                    + " true","root","root");
            Statement stmt=con.createStatement();
            //running query to check username and password.
            ResultSet rs = stmt.executeQuery("select email, mobile, address from user_detail where name ='"+uname+"' ");
                    
        
              if (rs.next())
            {
                String e = rs.getString("email");
                String m = rs.getString("mobile");
                String a = rs.getString("address");
                out.println("User e-mail: " + e);
            %>
            <br><br>
            <%
            out.println("User mob no.:  "+m);
            
            %>
            <br><br>
            <%
            out.println("User address: " +a);
             }
           /* else
            {
                response.sendRedirect("Error.jsp");        //will open Errorr.jsp if username and password are wrong.
                
            } */
        }
        catch (SQLException se)
        {
            out.print(se);
        }
        catch(ClassNotFoundException c)
        {
            out.print(c);
        }%>
      <br><br>
<!--        <input type="submit" value="Edit">-->
        
        </form>
            </div></div>
    </body>
</html>
