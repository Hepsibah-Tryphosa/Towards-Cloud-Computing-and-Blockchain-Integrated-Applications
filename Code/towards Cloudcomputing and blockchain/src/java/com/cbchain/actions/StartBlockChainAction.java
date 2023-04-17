/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cbchain.actions;

import com.clouds.db.DBConnection;
import com.clouds.db.StartNode;
import com.dp.hyd.Block;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ramu Maloth
 */
public class StartBlockChainAction extends HttpServlet {

    

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Transaction Details 
        String loginuser = request.getParameter("loginuser").trim();
        String insuranceuser = request.getParameter("insuranceuser").trim();
        String mobile = request.getParameter("mobile").trim();
        String email = request.getParameter("email").trim();
        String locality = request.getParameter("locality").trim();
        String insurancetype = request.getParameter("insurancetype").trim();
        String insurancepremium = request.getParameter("insurancepremium").trim();
        String bnakname = request.getParameter("bnakname").trim();
        String nameoncard = request.getParameter("nameoncard").trim();
        String totalamount = request.getParameter("totalamount").trim();
        String cardnumber = request.getParameter("cardnumber").trim();
        String cvv = request.getParameter("cvv").trim();
        String cardexpiry = request.getParameter("cardexpiry").trim();
        String blkplatform = request.getParameter("blkplatform").trim();
        
        String msg= insuranceuser+" sending "+totalamount+ " to "+bnakname;
        
        //StartBlockTransactionUtil sbu = new StartBlockTransactionUtil();        
        //sbu.startProcess(Float.parseFloat(totalamount));
        PreparedStatement ps = null;
        try(Connection con = DBConnection.getDBConnection()){
            String sqlQuery = "insert into insurancedetails(loginuser,insuranceuser,mobile,email,locality,insurancetype,insurancepremium,bnakname) values(?,?,?,?,?,?,?,?)";
            ps = con.prepareStatement(sqlQuery);
            ps.setString(1, loginuser);
            ps.setString(2,insuranceuser);
            ps.setString(3,mobile);
            ps.setString(4,email);
            ps.setString(5,locality);
            ps.setString(6,insurancetype);
            ps.setString(7,insurancepremium);
            ps.setString(8,bnakname);
            ps.executeUpdate();
            String trnxQuery = "insert into trnxdetails(loginuser,nameoncard,totalamount,cardnumber,cvv,cardexpiry,blkplatform) values(?,?,?,?,?,?,?)";
            ps = con.prepareStatement(trnxQuery);
            ps.setString(1, loginuser);
            ps.setString(2, nameoncard);
            ps.setString(3, totalamount);
            ps.setString(4, cardnumber);
            ps.setString(5, cvv);
            ps.setString(6, cardexpiry);
            ps.setString(7, blkplatform);
            ps.executeUpdate();
        StartNode sn = new StartNode();
        ArrayList<Block> blockchain = sn.startProcess(msg);
       
        
        int size = blockchain.size();
        Block b = null;
        if(size==1){
         b = blockchain.get(0);
        }else{
         b = blockchain.get(blockchain.size() - 1);
        }
        String sqlBlk = "insert into blockchain(loginuser,currenthash,previoushash,data,trnstimestamp,nonce) values(?,?,?,?,?,?)";
        PreparedStatement ps1 = con.prepareStatement(sqlBlk);
        ps1.setString(1, loginuser);
        ps1.setString(2, b.getHash());
        ps1.setString(3, b.getPreviousHash());
        ps1.setString(4, b.getData());
        ps1.setLong(5, b.getTimeStamp());
        ps1.setInt(6, b.getNonce());
        ps1.executeUpdate();
        request.setAttribute("block", blockchain);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/UserTransactionDetails.jsp");
		rd.forward(request, response);
        }catch(Exception ex){
            System.out.println("Exception at Trabsactions "+ex.getMessage());
            ex.printStackTrace();
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
