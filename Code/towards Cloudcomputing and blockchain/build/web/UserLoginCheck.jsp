<%-- 
    Document   : UserLoginCheck
    Created on : Oct 20, 2020, 9:23:10 AM
    Author     : Ramu Maloth
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.clouds.db.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String loginid = request.getParameter("loginid");
            String pswd = request.getParameter("pswd");
            PreparedStatement ps = null;
            ResultSet rs = null;
            String status = null;
            String email = null;
            try (Connection con = DBConnection.getDBConnection()) {
                String sqlQuery = "select status,email from registrations where loginid = ? and pswd = ?";
                ps = con.prepareStatement(sqlQuery);
                ps.setString(1, loginid);
                ps.setString(2, pswd);
                rs = ps.executeQuery();
                if (rs.next()) {
                    status = rs.getString("status");
                    email = rs.getString("email");
                }
                if (status.equalsIgnoreCase("Activated")) {
                    session.setAttribute("username", loginid);
                    session.setAttribute("email", email);
                    response.sendRedirect("./UserHome.jsp?msg=success");
                } else if (status.equalsIgnoreCase("waiting")) {
                    response.sendRedirect("./User.jsp?msg=waiting");
                } else {
                    response.sendRedirect("./User.jsp?msg=failed");
                }

            } catch (Exception e) {
                System.out.println("Error at "+e.getMessage());
                response.sendRedirect("./User.jsp?msg=failed");
            }finally{
            
            }
        %>
    </body>
</html>
