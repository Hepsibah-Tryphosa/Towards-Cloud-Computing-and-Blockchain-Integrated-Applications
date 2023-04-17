/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cbchain.actions;

import com.clouds.db.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ramu Maloth
 */
public class UserRegisterActions extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String custname = request.getParameter("custname").trim();
        String loginid = request.getParameter("loginid").trim();
        String pswd = request.getParameter("pswd").trim();
        String mobile = request.getParameter("mobile").trim();
        String email = request.getParameter("email").trim();
        String locality = request.getParameter("locality").trim();
        String address = request.getParameter("address").trim();
        String city = request.getParameter("city").trim();
        String state = request.getParameter("state").trim();
        String status = "waiting";        
        //Connection con = null;
        PreparedStatement ps = null;
        try(Connection con = DBConnection.getDBConnection()){
        String sqlQuery = "insert into registrations(custname,loginid,pswd,mobile,email,locality,address,city,state,status) values(?,?,?,?,?,?,?,?,?,?)";
        ps = con.prepareStatement(sqlQuery);
        ps.setString(1, custname);
        ps.setString(2, loginid);
        ps.setString(3, pswd);
        ps.setString(4, mobile);
        ps.setString(5, email);
        ps.setString(6, locality);
        ps.setString(7, address);
        ps.setString(8, city);
        ps.setString(9, state);
        ps.setString(10, status);
        int no = ps.executeUpdate();
        if(no>0){
        response.sendRedirect("Registrations.jsp?msg=success");
        }else{
        response.sendRedirect("Registrations.jsp?msg=failed");
        }
        
        }catch(Exception ex){
            System.out.println("Exception at Registrations = "+ex.getMessage());
            response.sendRedirect("Registrations.jsp?msg=failed");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
