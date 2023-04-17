<%-- 
    Document   : AdminLoginCheck
    Created on : Oct 20, 2020, 8:47:06 AM
    Author     : Ramu Maloth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
String cloudname = request.getParameter("loginid");
String pswd = request.getParameter("pswd");
if(cloudname.equals("Admin") && pswd.equals("Admin")){
response.sendRedirect("AdminHome.jsp?msg=success");
}else{
response.sendRedirect("Admin.jsp?msg=failed");
}
%>