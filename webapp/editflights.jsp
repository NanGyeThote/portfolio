<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SkyPals - Edit Flights Schedule</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="icon" href="title_logo.png" type="text/x-icon">
    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <div class="container-fluid bg-dark px-0">
            <div class="row gx-0">
                <div class="col-lg-3 bg-dark d-none d-lg-block">
                    <a href="index.jsp" class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                        <h1 class="m-0 text-primary text-uppercase">SkyPalss</h1>
                    </a>
                </div>
                <div class="col-lg-9">
                    <div class="row gx-0 bg-white d-none d-lg-flex">
                        <div class="col-lg-7 px-5 text-start">
                            <div class="h-100 d-inline-flex align-items-center py-2 me-4">
                                <i class="fa fa-envelope text-primary me-2"></i>
                                <p class="mb-0">info@example.com</p>
                            </div>
                            <div class="h-100 d-inline-flex align-items-center py-2">
                                <i class="fa fa-phone-alt text-primary me-2"></i>
                                <p class="mb-0">+012 345 6789</p>
                            </div>
                        </div>
                        <div class="col-lg-5 px-5 text-end">
                            <div class="d-inline-flex align-items-center py-2">
                                <a class="me-3" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="me-3" href=""><i class="fab fa-twitter"></i></a>
                                <a class="me-3" href=""><i class="fab fa-linkedin-in"></i></a>
                                <a class="me-3" href=""><i class="fab fa-instagram"></i></a>
                                <a class="" href=""><i class="fab fa-youtube"></i></a>
                            </div>
                        </div>
                    </div>
                    <nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0">
                        <a href="index.jsp" class="navbar-brand d-block d-lg-none">
                            <h1 class="m-0 text-primary text-uppercase">SkyPalss</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="admin_login_pass.jsp" class="nav-item nav-link">Home</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Add/Edit/Delete</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="addflights.jsp" class="dropdown-item"><small>Add Flight Schedules</small></a>
                                        <a href="editflights.jsp" class="dropdown-item active"><small>Edit Flight Schedules</small></a>
                                        <a href="deleteflights.jsp" class="dropdown-item"><small>Delete Flight Schedules</small></a>
                                    </div>
                                </div>
	                            <a href="availability_from_admin.jsp" class="nav-item nav-link"><small>Search Flights</small></a>
	                            <a href="coupon_add.jsp" class="nav-item nav-link"><small>Add Coupon</small></a>
	                            <a href="coupon_search.jsp" class="nav-item nav-link"><small>Search Coupon</small></a>
	                            <a href="coupon_delete.jsp" class="nav-item nav-link"><small>Delete Coupon</small></a>
                            </div>
                            <a href="index.jsp" class="btn btn-primary rounded-0 py-4 px-md-5 d-none d-lg-block"><small>LogOut As</small><b>
                                    <%  String A_name=(String)session.getAttribute("admin_name");  
                                        out.print(A_name);  
                                    %></b>
                            <i class="fa fa-arrow-right ms-3"></i></a>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Header End -->


        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0" style="background-image: url(img/addpln.png);">
            <div class="container-fluid page-header-inner py-5">
                <div class="container text-center pb-5">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Edit Flight Schedules</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="admin_login_pass.jsp">Home</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Edit Flight Schedules</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Editing From -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">Edit Flight Schedules From DataBase</h6>
                    <h1 class="mb-5">Edit A <span class="text-primary text-uppercase"> Flight Schedule</span></h1>
                </div>
                <div class="row g-5">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <form method="post" action="edit_flight_validation.jsp">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" placeholder="Enter Flight ID" name="flight_id">
                                            <label>Enter Flight ID</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" placeholder="Enter Flight Number" name="flight_no">
                                            <label>Enter Flight Number</label>
                                        </div>
                                    </div>
                                    <!-- 
                                    	<div class="col-md-6">
                                        <div class="form-floating">
                                            <select class="form-select" name="flight_name" id="flight_name">
                                                <option selected>Enter Flight Name</option>
                                                <option value="AirAsia India">AirAsia India</option>
                                                <option value="Air India">Air India</option>
                                                <option value="Air India Express">Air India Express</option>
                                                <option value="Go First">Go First</option>
                                                <option value="IndiGo">IndiGo</option>
                                                <option value="SpiceJet">SpiceJet</option>
                                                <option value="Vistara">Vistara</option>
                                                <option value="Alliance Air">Alliance Air</option>
                                                <option value="FlyBig">FlyBig</option>
                                                <option value="Star Air">Star Air</option>
                                                <option value="TruJet">TruJet</option>
                                                <option value="TajAir">TajAir</option>
                                                <option value="SpiceXpress">SpiceXpress</option>
                                                <option value="Quikjet Airlines">Quikjet Airlines</option>
                                                <option value="Blue Dart Aviation">Blue Dart Aviation</option>
                                            </select>
                                        </div>
                                    </div>
                                     -->
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            
                                        </div>
                                    </div>
                                    
                                    <div class="col-12"></div>
                                    <!-- 
                                    	<div class="col-md-6">
                                        <div class="form-floating">
                                            <select class="form-select" name="from_city" id="from_city">
                                                <option selected>Departure City Name</option>
                                                <option value="Mandalay Airport - MDY">Mandalay Airport - MDY</option>
												<option value="Yangon Airport - RGN">Yangon Airport - RGN</option>
												<option value="Dawei Airport - TVY">Dawei Airport - TVY</option>
												<option value="Heho Airport - HEH">Heho Airport -HEH</option>
												<option value="Kawthaung Airport - KAW">Kawthaung Airport - KAW</option>
												<option value="Kyaing Tong Airport - KET">Kyaing Tong Airport - KET</option>
												<option value="Myeik Airport - MGZ">Myeik Airport - MGZ</option>
												<option value="Myitkyina Airport - MYT">Myitkyina Airport - MYT</option>
												<option value="Nyaungu Airport - NYU">Nyaungu Airport - NYU</option>
												<option value="Putao Airport - PBU">Putao Airport - PBU</option>
												<option value="Sittwe Airport - AKY">Sittwe Airport - AKY</option>
												<option value="Thandwe Airport - SNW">Thandwe Airport - SNW</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <select class="form-select" name="to_city" id="to_city">
                                                <option value="Mandalay Airport - MDY">Mandalay Airport - MDY</option>
												<option value="Yangon Airport - RGN">Yangon Airport - RGN</option>
												<option value="Dawei Airport - TVY">Dawei Airport - TVY</option>
												<option value="Heho Airport - HEH">Heho Airport -HEH</option>
												<option value="Kawthaung Airport - KAW">Kawthaung Airport - KAW</option>
												<option value="Kyaing Tong Airport - KET">Kyaing Tong Airport - KET</option>
												<option value="Myeik Airport - MGZ">Myeik Airport - MGZ</option>
												<option value="Myitkyina Airport - MYT">Myitkyina Airport - MYT</option>
												<option value="Nyaungu Airport - NYU">Nyaungu Airport - NYU</option>
												<option value="Putao Airport - PBU">Putao Airport - PBU</option>
												<option value="Sittwe Airport - AKY">Sittwe Airport - AKY</option>
												<option value="Thandwe Airport - SNW">Thandwe Airport - SNW</option>
                                            </select>
                                        </div>
                                    </div>
                                    	
                                     -->
                                    <div class="col-md-6">
                                        <div class="form-floating date">
                                            <input type="date" class="form-control" placeholder="Date Of Flight" name="date_of_flight">
                                            <label for="checkin">Date Of Flight</label>
                                        </div>
                                    </div>
                                                                       
                                    <div class="col-12"></div>
                                    
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" placeholder="Enter Flight Departure Time HH:MM:SS" name="flight_arrival_time">
                                            <label><small>Enter Flight Departure Time HH:MM:SS</small></label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" placeholder="Enter Flight Arrival Time HH:MM:SS" id="frt" name="flight_reach_time">
                                            <label><small>Enter Flight Arrival Time HH:MM:SS</small></label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-12"></div>
                                    
                                    
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Edit Flight Schedule To The DataBase</button>
                                    </div>
                                    <div class="col-12" style="margin-bottom: 12%;"><div class="form-floating"></div></div>
                                </div>
                            </form>
                        </div>
                    
                </div>
            </div>
        </div>
        <!-- Editing End -->

        
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5">
                    <div class="col-md-3"></div>
                    
                    <div class="col-lg-6">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                                <div class="row g-3">
                                    <h3 class="mb-4 text-center">Send Emails<span class="text-primary text-uppercase"> <small>To Newsletter</small></span></h3>
                                    <h6 class="text-start text-primary text-center text-uppercase"> <small>Send Emails</small> </h6>
                                    <form method="post" action="email">
                                        <div class="row g-3">
                                            <div class="col-md-12">
                                                <div class="form-floating">
                                                <input type="text" class="form-control" id="subject" placeholder="Enter Subject" name="subject">
                                                <label for="subject">Enter Subject</label>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="msg" placeholder="Enter Message" name="msg">
                                                <label for="msg">Enter Message</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <button class="btn btn-primary w-100 py-3" type="submit">Send Emails</button>
                                            </div>
                                        </div>
                                   </div>
                            </form>
                                </div>
                           </div>
                    </div>
                    
                    <div class="col-md-3"></div>
                </div>
            </div>
        </div>
        

         <!-- Newsletter Start -->
        <div class="container newsletter mt-5 wow fadeIn" data-wow-delay="0.1s" style="margin: 23px; padding: 23px">
            <div class="row justify-content-center">
                <div class="col-lg-10 border rounded p-1">
                    <div class="text-center p-1">
                        <div class="bg-white text-center p-5">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Newsletter Start -->


<!-- Footer Start -->
        <div class="container-fluid bg-dark text-light footer wow fadeIn" data-wow-delay="0.1s">
            <div class="container pb-5">
                <div class="row g-5">
                    <div class="col-md-6 col-lg-4">
                        <div class="bg-primary rounded p-4">
                            <a href="index.jsp">
                                <h1 class="text-white text-uppercase mb-3">SkyPalss</h1>
                            </a>
                            <p class="text-white mb-0">
                                The website and backend mechanism are designed and developed by <a class="text-dark fw-medium" href="">SkyPalss</a> hope it's attractive and can be a demo of an actual airline system.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h6 class="section-title text-start text-primary text-uppercase mb-4">Contact</h6>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Yangon, Myanmar</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 82405 70310</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>skypalss@gmail.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-12">
                        <div class="row gy-5 g-4">
                            
                            <div class="col-md-6">
                                <h6 class="section-title text-start text-primary text-uppercase mb-4">Services</h6>
                                <a class="btn btn-link" href="adminlogin.jsp">Admin Logout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="admin_login_pass.jsp"> SkyPalss </a>, All Right Reserved. Designed By <a class="border-bottom">SkyPalss</a>
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="admin_login_pass.jsp">Home</a>
                                
                                <a href="viewbooking.jsp">View Booking</a>
                                <a href="availability_from_admin.jsp">Check Status</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>