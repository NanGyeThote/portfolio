<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<% String pagename="Cancellation_failed.jsp"; session.setAttribute("pagename", pagename); %>
<head>
    <meta charset="utf-8">
    <title>SkyPalss</title>
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

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="title_logo.png" type="text/x-icon">
    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <!--div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Header Start -->
        <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Header Start -->
        <div class="container-fluid bg-dark px-0">
            <div class="row gx-0">
                <div class="col-lg-3 bg-dark d-none d-lg-block">
                    <a href="admin_login_pass.jsp" class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                        <h1 class="m-0 text-primary text-uppercase">SkyPalss</h1>
                    </a>
                </div>
                <div class="col-lg-9">
                    <div class="row gx-0 bg-white d-none d-lg-flex">
                        <div class="col-lg-7 px-5 text-start">
                            <div class="h-100 d-inline-flex align-items-center py-2 me-4">
                                <i class="fa fa-envelope text-primary me-2"></i>
                                <p class="mb-0">skypalss@gmail.com</p>
                            </div>
                            <div class="h-100 d-inline-flex align-items-center py-2">
                                <i class="fa fa-phone-alt text-primary me-2"></i>
                                <p class="mb-0">+91 82405 70310</p>
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
                        <a href="admin_login_pass.jsp" class="navbar-brand d-block d-lg-none">
                            <h1 class="m-0 text-primary text-uppercase">Skypalss</h1>
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
        <div class="container-fluid page-header mb-5 p-0" style="background-image: url(img/booking.png);">
            <div class="container-fluid page-header-inner py-5">
                <div class="container text-center pb-5">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Cancellation</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="user_login_pass.jsp">Home</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Cancellation</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Booking Start -->
        <div class="container-fluid booking pb-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container">
                <div class="bg-white shadow" style="padding: 35px;">
                    <div class="row g-2">
                    </div>
                </div>
            </div>
        </div>
        <!-- Booking End -->

        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">Tickets Cancellation</h6>
                    <h1 class="mb-5">Cancel A <span class="text-primary text-uppercase">Plane Ticket</span></h1>
                </div>
                <div class="container newsletter mt-5 wow fadeIn" data-wow-delay="0.1s">
                    <div class="row justify-content-center">
                        <div class="col-lg-10 p-1">
                            <div class="text-center p-1">
                                <h3>Sorry But The PNR NUMBER <%  String PNR=(String)session.getAttribute("PNR"); out.print(PNR);%> IS IN-CORRECT</h3>
                                <h3>Or The Record Has Been Deleted Already</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row g-5">
                    <div class="col-lg-6">
                        <div class="row g-3">
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.1s" src="img/about-1.png" style="margin-top: 25%;">
                            </div>
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-100 wow zoomIn" data-wow-delay="0.3s" src="img/about-2.png">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            
                            <form  method="post" action="deleteBooking">
                                <div class="row g-3">
                                		<div class="form-floating">
                                            <input type="text" class="form-control" id="uname" placeholder="Provide Your User Name" name="uname">
                                            <label for="uname">Provide User Name</label>
                                        </div>
                                    <div class="col-md-8">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="PNR" placeholder="Provide Your PNR Number" name="PNR">
                                            <label for="PNR">Provide PNR Number</label>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-floating">
                                            <button class="btn btn-primary w-100 py-3" type="submit">Cancel Now</button>
                                        </div>
                                    </div>
                                    
                                </div>
                            </form>
                        </div>
                       </div>
                    </div>
                    
                </div>
            </div>
        </div>
        
       <!-- Newsletter Start -->
        <div class="container newsletter mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="row justify-content-center">
                <div class="col-lg-10 border rounded p-1">
                    <div class="border rounded text-center p-1">
                        <div class="bg-white rounded text-center p-5">
                            <h4 class="mb-4">Subscribe Our <span class="text-primary text-uppercase">Newsletter</span></h4>
                            <form method="post" action="Newsletter_srv">
                                <div class="position-relative mx-auto" style="max-width: 400px;">
                                    <input class="form-control w-100 py-3 ps-4 pe-5" type="email" placeholder="Enter your email" id="emails" name="emails">
                                    <button type="submit" class="btn btn-primary py-2 px-3 position-absolute top-0 end-0 mt-2 me-2">Submit</button>
                                </div>
                            </form>
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
                            <a href="admin_login_pass.jsp">
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
                                
                                <a href="view_result_a.jsp">View Booking</a>
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