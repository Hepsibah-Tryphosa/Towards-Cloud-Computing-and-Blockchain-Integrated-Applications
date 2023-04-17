<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.clouds.db.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Cloud Computing and Blockchain</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,600,700" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="AdminHome.jsp">Towards Cloud Computing and Blockchain Integrated Applications</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <jsp:include page="usermenu.jsp"></jsp:include>
            </div>
        </nav>
        <!-- END nav -->

        <section class="ftco-section ftco-counter img" id="section-counter">
            <div class="container pb-md-5">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-8 text-center heading-section heading-section-white ftco-animate">
                        <h2 class="mb-3">Start Transaction process </h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-10">
                        <div class="row">

<h2>Hello...! <span class="btn btn-info"> <%=session.getAttribute("username").toString()%></span></h2>
<br/>
                        <form class="text-left clearfix mt-30" action="./StartBlockChainAction" method="POST">

                            <table class="table sm text-center text-white">
                                <tr>
                                    <td>Login User Name</td>
                                    <td><input type="text" name="loginuser" value="${cs.loginuser}" readonly=""> </td>
                                    <td>Insurance For the user</td>
                                    <td><input type="text" name="insuranceuser" value="${cs.insuranceuser}" readonly=""> </td>
                                </tr>
                                <tr>
                                    <td>Mobile</td>
                                    <td><input type="text" name="mobile" value="${cs.mobile}" readonly=""> </td>
                                    <td>Email</td>
                                    <td><input type="text" name="email" value="${cs.email}" readonly=""> </td>
                                </tr>
                                <tr>
                                    <td>Locality</td>
                                    <td><input type="text" name="locality" value="${cs.locality}" readonly=""> </td>
                                    <td>Insurance Type</td>
                                    <td><input type="text" name="insurancetype" value="${cs.insurtype}" readonly=""> </td>
                                </tr>
                                <tr>
                                    <td>Premium Amount &#x20B9;</td>
                                    <td><input type="text" name="insurancepremium" value="${cs.insurancepremium}" readonly=""> </td>
                                    <td>Selected Bank</td>
                                    <td><input type="text" name="bnakname" value="${cs.bnakname}" readonly=""> </td>
                                </tr>
                                
                                <tr>                                    
                                    <td>Name On Card</td>
                                    <td><input type="text" name="nameoncard" style="text-transform: uppercase;" placeholder="Name On Card" required > </td>
                                    <td>Payable Amount &#x20B9;</td>
                                    <td><input type="text" name="totalamount" value="${cs.insurancepremium}" readonly=""> </td>
                                </tr>
                                
                                <tr>                                    
                                    <td>Credit/Debit Card Number</td>
                                    <td><input type="text" name="cardnumber" pattern="[123456789][0-9]{15}" placeholder="Credit / Debit Card Number" required > </td>
                                    <td>CVV Number</td>
                                    <td><input type="text" name="cvv" pattern="[12345678][0-9]{2}" placeholder="CVV Number" required> </td>
                                </tr>
                                
                                <tr>                                    
                                    <td>Expiry Date</td>
                                    <td><input type="month" name="cardexpiry" id="datepicker" min="2020-10" max="2030-12"  placeholder="Card Expiry Date" required > </td>
                                    <td>Select Blockchain Platform</td>
                                    <td>
                                        <select name="blkplatform" required="">
                                            <option vavalue="">--Select BlackChain Platform--</option>
                                            <option value="AWS Blockchain">AWS Blockchain</option>
                                            <option value="Azure Blockchain">Azure Blockchain</option>
                                            
                                        </select>
                                    </td>
                                </tr>
                                
                            </table>
                            
                            <center>
            <button type="submit" class="btn btn-success text-center">Start Transaction</button>
                                </center>
          </form>

                        </div>
                    </div>
                </div>
            </div>
        </section>



        <footer class="ftco-footer ftco-bg-dark ftco-section">
            <div class="container">       
                <div class="row">
                    <div class="col-md-12 text-center">
                        <p>
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="#" target="_blank">Alex Corporations</a>
                    </div>
                </div>
            </div>
        </footer>

        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/scrollax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>    
    </body>
</html>