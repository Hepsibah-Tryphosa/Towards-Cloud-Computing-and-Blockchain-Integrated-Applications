/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cbchain.actions;

import com.cbchain.models.CustomerDetails;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ramu Maloth
 */
public class InsuranceDetailsAction extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String loginuser  = request.getParameter("loginuser").trim();
        String insuranceuser  = request.getParameter("insuranceuser").trim();
        String mobile  = request.getParameter("mobile").trim();
        String email  = request.getParameter("email").trim();
        String locality  = request.getParameter("locality").trim();
        String address  = request.getParameter("address").trim();
        String insurtype  = request.getParameter("insurtype").trim();
        String insurancepremium  = request.getParameter("insurancepremium").trim();
        
        CustomerDetails cs = new CustomerDetails();
        cs.setLoginuser(loginuser);
        cs.setInsuranceuser(insuranceuser);
        cs.setMobile(mobile);
        cs.setEmail(email);
        cs.setLocality(locality);
        cs.setAddress(address);
        cs.setInsurtype(insurtype);
        cs.setInsurancepremium(insurancepremium);
        String[] bank = {"SBI Bank","Union Bank","ICICI Bank","Axis Bank","Canara Bank","HDFC Bank","FDI Bank","Chase Bank"};
        int rnd = new Random().nextInt(bank.length);
        String bankName = bank[rnd];
        cs.setBnakname(bankName);
        request.setAttribute("cs", cs);
        
        RequestDispatcher rd = request.getRequestDispatcher("./StartBlockChainProcess.jsp");
        rd.forward(request, response);
        
   
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
