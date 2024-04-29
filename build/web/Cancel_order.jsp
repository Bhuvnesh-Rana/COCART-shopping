<%-- 
    Document   : Cancel_order
    Created on : 11 Jun, 2021, 12:16:52 PM
    Author     : RANA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id = request.getParameter("id");
        out.print(id);
        
        %>
    </body>
</html>
