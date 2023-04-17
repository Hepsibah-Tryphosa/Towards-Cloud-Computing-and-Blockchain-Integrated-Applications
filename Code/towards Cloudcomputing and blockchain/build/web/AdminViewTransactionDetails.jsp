<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.clouds.db.DBConnection"%>
<%@page import="java.sql.Connection"%>
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
                <a class="navbar-brand" href="AdminHome.jsp">Cloud Computing and Blockchain Integrated Applications</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <jsp:include page="adminmenu.jsp"></jsp:include>
            </div>
        </nav>
        <!-- END nav -->

        <section class="ftco-section ftco-counter img" id="section-counter">
            <div class="container pb-md-5">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-8 text-center heading-section heading-section-white ftco-animate">
                        <h2 class="mb-3">View Transactions Details </h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-10">
                        <div class="row">


                            <table border="2px" class="table table-hover table-dark">
                                <thead>
                                    <tr class="table-danger">
                                        <th scope="col">S.No</th>
                                        <th scope="col">Name On Card</th>                                        
                                        <th scope="col">Total Amount</th>
                                        <th scope="col">Card Number</th>
                                        <th scope="col">CVV</th>
                                        <th scope="col">Block Chain Node</th>                                        >
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        PreparedStatement ps = null;
                                        ResultSet rs = null;
                                        int count = 0;
                                        
                                    try(Connection con = DBConnection.getDBConnection()){
                                        String sqlQuery = "select *from trnxdetails";
                                        ps = con.prepareStatement(sqlQuery);
                                        
                                        rs = ps.executeQuery();
                                        while(rs.next()){
                                        count++;
                                        int id = rs.getInt("id");
                                        
                                        %>
                                     <tr scope="row" style="color: BLUE; background-color:#FFFCBB">
                                        <td><%=count%></td>
                                        <td><%=rs.getString("nameoncard")%></td>
                                        <td>&#x20B9;<%=rs.getString("totalamount")%></td>
                                        <td><%=rs.getString("cardnumber")%></td>
                                        <td><%=rs.getString("cvv")%></td>
                                        <td><%=rs.getString("blkplatform")%></td>
                                        
                                    </tr>

                                    <%
                                        
                                        }
                                        
                                        
                                    
                                    }catch(Exception ex){
                                    System.out.println("Error at Activating users "+ex.getMessage());
                                    }
                                    %>
                                    
                                </tbody>
                            </table>
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