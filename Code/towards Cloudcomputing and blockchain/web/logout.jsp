<%-- 
    Document   : logout
    Created on : Oct 20, 2020, 9:15:45 AM
    Author     : Ramu Maloth
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
    session.invalidate();
    response.sendRedirect("./index.jsp");
    %>
    </body>
</html>
