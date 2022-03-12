<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
         <title>News HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="StyleUser/assets/img/favicon.ico">

		<!-- CSS here -->
            <link rel="stylesheet" href="StyleUser/assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="StyleUser/assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="StyleUser/assets/css/ticker-style.css">
            <link rel="stylesheet" href="StyleUser/assets/css/flaticon.css">
            <link rel="stylesheet" href="StyleUser/assets/css/slicknav.css">
            <link rel="stylesheet" href="StyleUser/assets/css/animate.min.css">
            <link rel="stylesheet" href="StyleUser/assets/css/magnific-popup.css">
            <link rel="stylesheet" href="StyleUser/assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="StyleUser/assets/css/themify-icons.css">
            <link rel="stylesheet" href="StyleUser/assets/css/slick.css">
            <link rel="stylesheet" href="StyleUser/assets/css/nice-select.css">
            <link rel="stylesheet" href="StyleUser/assets/css/style.css">
            <link rel="stylesheet" href="StyleUser/assets/css/responsive.css">
   </head>

   <body>
       
    <!-- Preloader Start -->
    <!-- <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="StyleUser/assets/img/logo/logo1.png" alt="">
                </div>
            </div>
        </div>
    </div> -->
    <!-- Preloader Start -->

    <header>
        <!-- Header Start -->
       <div class="header-area">
            <div class="main-header ">
                <div class="header-top black-bg d-none d-md-block">
                   <div class="container">
                       <div class="col-xl-12">
                            <div class="row d-flex justify-content-between align-items-center">
                                <div class="header-info-left">
                                    <ul>     
                                        <li><img src="StyleUser/assets/img/icon/header_icon1.png" alt="">34ºc, Sunny </li>
                                        <li><img src="StyleUser/assets/img/icon/header_icon1.png" alt="">Tuesday, 18th June, 2022</li>
                                    </ul>
                                </div>
                                <div class="header-info-right">
                                    <ul class="header-social">    
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                       <li> <a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                       </div>
                   </div>
                </div>
                <div class="header-mid d-none d-md-block">
                   <div class="container">
                        <div class="row d-flex align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-3 col-lg-3 col-md-3">
                                <div class="logo">
                                    <a href="/ProjetFootNewsUser/home"><img src="StyleUser/assets/img/logo/logo1.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-9 col-lg-9 col-md-9">
                                <div class="header-banner f-right ">
                                </div>
                            </div>
                        </div>
                   </div>
                </div>
               <div class="header-bottom header-sticky">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-xl-10 col-lg-10 col-md-12 header-flex">
                                <!-- sticky -->
                                    <div class="sticky-logo">
                                        <a href="/ProjetFootNewsUser/home"><img src="StyleUser/assets/img/logo/logo1.png" alt=""></a>
                                    </div>
                                <!-- Main-menu -->
                                <div class="main-menu d-none d-md-block">
                                    <nav>                  
                                        <ul id="navigation">    
                                            <li><a href="/ProjetFootNewsUser/home">Home</a></li>
                                            <c:forEach items="${cats}" var="objet" end="3">
                                            	<li><a href='/ProjetFootNewsUser/categorie-list?cat=<c:out value="${objet.idCat}"/>'
                                            			<c:if test="${idCat == objet.idCat}">style="color: #fc3f00"</c:if>
                                            			><c:out value="${objet.nom}"/></a></li>
                                            </c:forEach>
                                            <c:if test="${size > 4}">
	                                            <li><a href="#" style="color: #fc3f00">Autres</a>
	                                                <ul class="submenu">
	                                                	<c:forEach items="${cats}" var="objet" begin="4">
	                                                    	<li>
	                                                    	<a href='/ProjetFootNewsUser/categorie-list?cat=<c:out value="${objet.idCat}"/>'><c:out value="${objet.nom}"/></a></li>
	                                                    </c:forEach>
	                                                </ul>
	                                            </li>
                                            </c:if>
                                        </ul>
                                    </nav>
                                </div>
                            </div>             
                            <div class="col-xl-2 col-lg-2 col-md-4">
                                <div class="header-right-btn f-right d-none d-lg-block">
                                    <div class="search-box">
                                    </div>
                                </div>
                            </div>
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-md-none"></div>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
       </div>
        <!-- Header End -->
    </header>

    <main>
   <!-- Whats New Start -->
    <section class="whats-news-area pt-50 pb-20">
        <div class="container">
            <div class="row">
            <div class="col-lg-8">
                <div class="row d-flex justify-content-between">
                    <div class="col-lg-12 col-md-12">
                        <div class="section-tittle mb-30">
                            <h3>Whats New</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <!-- Nav Card -->
                        <div class="tab-content" id="nav-tabContent">
                            <!-- card one -->
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">           
                                <div class="whats-news-caption">
                                    <div class="row">
                                    	<c:forEach items="${NewsByCat}" var="objet">
	                                        <div class="col-lg-6 col-md-6">
	                                            <div class="single-what-news mb-100">
	                                                <div class="what-img">
	                                                    <img src='uploads/360x335/<c:out value="${objet.image}"/>' alt="">
	                                                </div>
	                                                <div class="what-cap">
	                                                    <span class="color1"><c:out value="${objet.date}"/></span>
	                                                    <h4><a href='/ProjetFootNewsUser/categorie-details?art=<c:out value="${objet.idArticle}"/>'><c:out value="${objet.titre}"/>.</a></h4>
	                                                </div>
	                                            </div>
	                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!-- End Nav Card -->
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <!-- Section Tittle -->
                <div class="section-tittle mb-40">
                    <h3>Follow Us</h3>
                </div>
                <!-- Flow Socail -->
                <div class="single-follow mb-45">
                    <div class="single-box">
                        <div class="follow-us d-flex align-items-center">
                            <div class="follow-social">
                                <a href="#"><img src="StyleUser/assets/img/news/icon-fb.png" alt=""></a>
                            </div>
                            <div class="follow-count">  
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div> 
                        <div class="follow-us d-flex align-items-center">
                            <div class="follow-social">
                                <a href="#"><img src="StyleUser/assets/img/news/icon-tw.png" alt=""></a>
                            </div>
                            <div class="follow-count">
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div>
                            <div class="follow-us d-flex align-items-center">
                            <div class="follow-social">
                                <a href="#"><img src="StyleUser/assets/img/news/icon-ins.png" alt=""></a>
                            </div>
                            <div class="follow-count">
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div>
                        <div class="follow-us d-flex align-items-center">
                            <div class="follow-social">
                                <a href="#"><img src="StyleUser/assets/img/news/icon-yo.png" alt=""></a>
                            </div>
                            <div class="follow-count">
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </section>
    <!-- Whats New End -->
    </main>
    
   <footer>
       <!-- Footer Start-->
       <div class="footer-area footer-padding fix">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-5 col-lg-5 col-md-7 col-sm-12">
                        <div class="single-footer-caption">
                            <div class="single-footer-caption">
                                <!-- logo -->
                                <div class="footer-logo">
                                    <a href="/ProjetFootNewsUser/home"><img src="StyleUser/assets/img/logo/logo2_footer1.png" alt=""></a>
                                </div>
                                <div class="footer-tittle">
                                    <div class="footer-pera">
                                        <p>Faites d'Eurosport votre source incontournable d'actualités sportives en ligne, avec des horaires complets, des statistiques et des scores en direct, du football au tennis, en passant par le cyclisme, le snooker et bien plus encore..</p>
                                    </div>
                                </div>
                                <!-- social -->
                                <div class="footer-social">
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                    <a href="#"><i class="fab fa-instagram"></i></a>
                                    <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4  col-sm-6">
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
                    </div>
                </div>
            </div>
        </div>
       <!-- footer-bottom aera -->
       <div class="footer-bottom-area">
           <div class="container">
               <div class="footer-border">
                    <div class="row d-flex align-items-center justify-content-between">
                        <div class="col-lg-12">
                            <div class="footer-copy-right">
                                <p>
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Football News</p>
                            </div>
                        </div>
                    </div>
               </div>
           </div>
       </div>
       <!-- Footer End-->
   </footer>
   
	<!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="./StyleUser/assets/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->
		<script src="./StyleUser/assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./StyleUser/assets/js/popper.min.js"></script>
        <script src="./StyleUser/assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="./StyleUser/assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./StyleUser/assets/js/owl.carousel.min.js"></script>
        <script src="./StyleUser/assets/js/slick.min.js"></script>
        <!-- Date Picker -->
        <script src="./StyleUser/assets/js/gijgo.min.js"></script>
		<!-- One Page, Animated-HeadLin -->
        <script src="./StyleUser/assets/js/wow.min.js"></script>
		<script src="./StyleUser/assets/js/animated.headline.js"></script>
        <script src="./StyleUser/assets/js/jquery.magnific-popup.js"></script>

        <!-- Breaking New Pluging -->
        <script src="./StyleUser/assets/js/jquery.ticker.js"></script>
        <script src="./StyleUser/assets/js/site.js"></script>

		<!-- Scrollup, nice-select, sticky -->
        <script src="./StyleUser/assets/js/jquery.scrollUp.min.js"></script>
        <script src="./StyleUser/assets/js/jquery.nice-select.min.js"></script>
		<script src="./StyleUser/assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="./StyleUser/assets/js/contact.js"></script>
        <script src="./StyleUser/assets/js/jquery.form.js"></script>
        <script src="./StyleUser/assets/js/jquery.validate.min.js"></script>
        <script src="./StyleUser/assets/js/mail-script.js"></script>
        <script src="./StyleUser/assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./StyleUser/assets/js/plugins.js"></script>
        <script src="./StyleUser/assets/js/main.js"></script>
        
    </body>
</html>