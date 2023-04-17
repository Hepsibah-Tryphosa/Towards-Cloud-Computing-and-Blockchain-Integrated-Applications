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
        <script>
function validateForm() {
    var x = document.forms["myForm"]["email"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
}
</script>

    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Cloud Computing and Blockchain Integrated Applications</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <jsp:include page="usermenu.jsp"></jsp:include>
            </div>
        </nav>
        <!-- END nav -->

        <div class="hero-wrap js-fullheight">
            <div class="overlay"></div>
            <div class="container-fluid px-0">
                <div class="row d-md-flex no-gutters slider-text align-items-center js-fullheight justify-content-start">
                    <img class="one-third js-fullheight align-self-end order-md-first img-fluid" src="images/undraw_co-working_825n.svg" alt="">
                    <div class="one-forth d-flex align-items-center ftco-animate js-fullheight">
                        <div class="text mt-5">
                            <span class="subheading">User Insurance Form</span>
                            <p>
                            <form action="./InsuranceDetailsAction" method="POST" class="table-responsive" style="width:100%">
                                <table>
                                    <tr style="color: white;">
                                        <td>Customer Name</td>
                                        <td><input type="text" name="loginuser" required="" value="<%=session.getAttribute("username")%>" readonly="" pattern="[a-zA-Z]+"></td>
                                    </tr>
                                    <tr style="color: white;">
                                        <td>Insured Name</td>
                                        <td><input type="text" name="insuranceuser" required="" pattern='[a-zA-Z]+'></td>
                                    </tr>
                                    
                                    <tr style="color: white;">
                                        <td>Mobile</td>
                                        <td><input type="text" name="mobile" required="" pattern='[56789][0-9]{9}'></td>
                                    </tr>
                                    <tr style="color: white;">
                                        <td>Email</td>
                                        <td><input type="email" name="email" required="" pattern='[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$'></td>
                                    </tr>
                                    <tr style="color: white;">
                                        <td>Locality</td>
                                        <td><input type="text" name="locality" required="" pattern='[A-Za-z ]+' title= 'Enter Characters Only '></td>
                                    </tr>
                                    <tr style="color: white;">
                                        <td>Address</td>
                                        <td><textarea type="text" name="address" required="" rows='3' cols='20'></textarea></td>
                                    </tr>
                                    <tr style="color: white;">
                                        <td>Insurance Type</td>
                                        <td><input type="text" name="insurtype" required="" value="Health" pattern='[A-Za-z ]+' title= 'Enter Characters Only '></td>
                                    </tr>
                                    <tr style="color: white;">
                                        <td>Select Insurance Premium</td>
                                        <td>
                                            <select name="insurancepremium" required="">
                                                <option value="">--Select insurance Premium--</option>
                                                <option value="500000">5 Lac</option>
                                                <option value="1000000">10 Lac</option>
                                                <option value="1500000">15 Lac</option>
                                                <option value="2000000">20 Lac</option>
                                                
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><button type="submit" value="Register" class="btn btn-secondary px-4 py-3">Submit</button></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-group mt-3">
                                                <span  >&nbsp;</span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                         <%
                                String msg = request.getParameter("msg");
                                if (msg != null && msg.equalsIgnoreCase("success")) {
                                    out.println("<font color='WHITE'>Registration Successfull </font>");
                                } else if (msg != null && msg.equalsIgnoreCase("failed")) {
                                    out.println("<font color='PINK'>Registration Faild Due to email already exist</font>");
                                }

                            %>

                                    </tr>
                                </table>

                            </form
                                                        </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>


        <section class="ftco-section services-section bg-light">
            <div class="container">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-8 text-center heading-section ftco-animate">
                        <h2 class="mb-3">Cloud Services</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services d-flex">
                            <div class="icon d-flex align-items-center justify-content-center">
                                <span class="flaticon-cloud"></span>
                            </div>
                            <div class="media-body pl-4">
                                <h3 class="heading">Cloud databases</h3>
                                <p class="mb-0">Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                            </div>
                        </div>      
                    </div>
                    <div class="col-lg-4 col-md-6 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services d-flex">
                            <div class="icon d-flex align-items-center justify-content-center">
                                <span class="flaticon-server"></span>
                            </div>
                            <div class="media-body pl-4">
                                <h3 class="heading">Website Hosting</h3>
                                <p class="mb-0">Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                            </div>
                        </div>    
                    </div>
                    <div class="col-lg-4 col-md-6 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services d-flex">
                            <div class="icon d-flex align-items-center justify-content-center">
                                <span class="flaticon-customer-service"></span>
                            </div>
                            <div class="media-body pl-4">
                                <h3 class="heading">File Storage</h3>
                                <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                            </div>
                        </div>      
                    </div>
                    <div class="col-lg-4 col-md-6 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services d-flex">
                            <div class="icon d-flex align-items-center justify-content-center">
                                <span class="flaticon-life-insurance"></span>
                            </div>
                            <div class="media-body pl-4">
                                <h3 class="heading">Forex Trading</h3>
                                <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                            </div>
                        </div>      
                    </div>
                    <div class="col-lg-4 col-md-6 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services d-flex">
                            <div class="icon d-flex align-items-center justify-content-center">
                                <span class="flaticon-cloud-computing"></span>
                            </div>
                            <div class="media-body pl-4">
                                <h3 class="heading">File Backups</h3>
                                <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                            </div>
                        </div>    
                    </div>
                    <div class="col-lg-4 col-md-6 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services d-flex">
                            <div class="icon d-flex align-items-center justify-content-center">
                                <span class="flaticon-settings"></span>
                            </div>
                            <div class="media-body pl-4">
                                <h3 class="heading">Remote Desktop</h3>
                                <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                            </div>
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