<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Developer Hyuk</title>

    <!-- Load Librarys -->
    <script src="js/lib/jquery-3.2.0.min.js"></script>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/iconfont.css">
    <link rel="stylesheet" href="css/slick/slick.css">
    <link rel="stylesheet" href="css/slick/slick-theme.css">
    <link rel="stylesheet" href="css/stylesheet.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/jquery.fancybox.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <script src="js/lib/jquery.magnific-popup.js"></script>
    <script src="js/lib/jquery.mixitup.min.js"></script>
    <script src="js/lib/jquery.easing.1.3.js"></script>
    <script src="js/lib/jquery.masonry.min.js"></script>
    
    <!-- page controller js -->
    <script src="js/indexCtrl.js"></script>
    

    <!--slick slide js -->
    <script src="css/slick/slick.js"></script>
    <script src="css/slick/slick.min.js"></script>

    <!--For Plugins external css-->
    <link rel="stylesheet" href="css/plugins.css" />

    <!--Theme custom css -->
    <link rel="stylesheet" href="css/style.css">

    <!--Theme Responsive css-->
    <link rel="stylesheet" href="css/responsive.css" />

    <script src="js/lib/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    
    <!-- get ContextPath -->
    <c:set var="context" value="${pageContext.request.contextPath}" />

</head>
<body>
	
<div data-spy="scroll" data-target=".navbar-collapse">

<div class="culmn">
    <header id="main_menu" class="header navbar-fixed-top">            
        <div class="main_menu_bg">
            <div class="container">
                <div class="row">
                    <div class="nave_menu">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand" href="#home">
                                        <img src="img/logo.png"/>
                                    </a>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->



                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="#home">HOME</a></li>
                                        <li><a href="#history">ABOUT ME</a></li>
                                        <li><a href="#portfolio">PORTFOLIO</a></li>
                                        <li><a href="#contact">CONTACT</a></li>
                                        <!-- <li><a class="popup-with-form" href="#test-form">ADMIN</a></li>  -->
                                        <li><a href="/admin">ADMIN</a></li>
                                    </ul>


                                </div>

                            </div>
                        </nav>
                    </div>	
                </div>

            </div>

        </div>
    </header> <!--End of header -->




            <!--home Section -->
            <section id="home" class="home">
                <div class="overlay">
                    <div class="home_skew_border">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    <div class="main_home_slider text-center">
                                        <div class="single_home_slider">
                                            <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                                <h3>DongHyuk's Portfolio site </h3>
                                                <h1>WELCOME TO DH WORLD</h1>
                                                <div class="separator"></div>
                                                <p>This is the DongHyuk's Web Portfolio Site which is made with HTML5 and Jquery
                                                    and it is based on SpringBoot
                                                    </p>
                                                <div class="home_btn">
                                                    <a href="#contact" class="btn btn-lg m_t_10">CONTACT NOW</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!--End of home section -->

            <hr />


            <!-- History section -->
            <section id="history" class="history sections">
                <div class="container">
                    <div class="row">
                        <div class="main_history">
                            <div class="col-sm-6">
                                <div class="single_history_img">
                                    <img src="img/stab1.png" alt="" />
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="single_history_content">
                                    <div class="head_title">
                                        <h2>PERSONAL STATEMENT</h2>
                                    </div>
                                    <div class="content">
                                    <p> NAME : KANG DONG HYUK
                                        AGE : 27
                                        GENDER : MALE
                                        HOMETOWN : SUWON
                                        EDUCATION : BACHELOR'S DEGREE AT HANSUNG UNIVERCITY
                                        MAJOR : COMPUTER ENGINEERING
                                        CERTIFICATE : Engineer Information Processing
                                        Interests : WEB
                                    </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!--End of row -->
                </div><!--End of container -->
            </section><!--End of history -->


            <!-- service Section -->
            <section id="service" class="service">
                <div class="container-fluid">
                    <div class="row">
                        <div class="main_service">
                            <div class="col-md-6 col-sm-12 no-padding">

                                <div class="single_service single_service_text text-right">
                                    <div class="head_title">
                                        <h2>Skills</h2>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12 col-sm-10 col-xs-10 margin-bottom-60">
                                            <div class="row">

                                                <div class="col-sm-10 col-sm-offset-1 col-xs-9 col-xs-offset-1">
                                                    <article class="single_service_right_text">
                                                        <h4>Language</h4>
                                                        <p>JAVA
                                                            JAVASCRIPT</p>
                                                    </article>
                                                </div>
                                                <div class="col-sm-1 col-xs-1">
                                                    <figure class="single_service_icon">
                                                        <i class="fa fa-heart"></i>
                                                    </figure><!-- End of figure -->
                                                </div>
                                            </div>
                                        </div><!-- End of col-sm-12 -->

                                        <div class="col-md-12 col-sm-10 col-xs-10 margin-bottom-60">
                                            <div class="row">

                                                <div class="col-sm-10 col-sm-offset-1 col-xs-9 col-xs-offset-1">
                                                    <article class="single_service_right_text">
                                                        <h4>Front-End</h4>
                                                        <p>CSS
                                                            HTML5
                                                            AngularJS
                                                            JQUERY
                                                        </p>
                                                    </article>
                                                </div>
                                                <div class="col-sm-1 col-xs-1">
                                                    <figure class="single_service_icon">
                                                        <i class="fa fa-heart"></i>
                                                    </figure><!-- End of figure -->
                                                </div>
                                            </div>
                                        </div><!-- End of col-sm-12 -->

                                        <div class="col-md-12 col-sm-10 col-xs-10 margin-bottom-60">
                                            <div class="row">

                                                <div class="col-sm-10 col-sm-offset-1 col-xs-9 col-xs-offset-1 margin-bottom-20">
                                                    <article class="single_service_right_text">
                                                        <h4>Back-End</h4>
                                                        <p>NodeJS
                                                            SpringFramework</p>
                                                    </article>
                                                </div>
                                                <div class="col-sm-1 col-xs-1">
                                                    <figure class="single_service_icon">
                                                        <i class="fa fa-heart"></i>
                                                    </figure><!-- End of figure -->
                                                </div>
                                            </div>
                                        </div><!-- End of col-sm-12 -->

                                    </div>
                                </div>
                            </div><!-- End of col-sm-6 -->

                            <div class="col-md-6 col-sm-12 no-padding">
                                <figure class="single_service single_service_img">
                                    <div class="overlay-img"></div>
                                    <img src="img/servicerightimg.jpg" alt="" />
                                </figure><!-- End of figure -->
                            </div><!-- End of col-sm-6 -->

                        </div>
                    </div><!-- End of row -->
                </div><!-- End of Container-fluid -->
            </section><!-- End of service Section -->


            <section id="portfolio" class="portfolio sections">
                <div class="container-fluid">
                    <div class="row">
                        <div class="main_portfolio">
                            <div class="col-sm-12">
                                <div class="head_title text-center">
                                    <h2>RECENT WORKS</h2>
                                    <div class="subtitle">
                                        Click the tile for a detailed Description
                                    </div>
                                    <div class="separator"></div>
                                </div>
                            </div>
                            <div style="clear:both;"></div>     
                            <div id="portfoliowork"> 
                                <div class="single_portfolio tile scale-anm web grid-item-width2 video" >
                                    <img src="img/pf1.jpg" alt="" />
                                    <a href="img/pf1.jpg" class="portfolio-img">
                                        <div class="grid_item_overlay">
                                            <div class="separator4"></div>
                                            <h3>ArgoInfotec Internship</h3>
                                            <p>2017.07 - 2018.03</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="single_portfolio tile scale-anm bcards photo" >
                                    <img src="img/pf2.jpg" alt="" />
                                    <a href="img/pf2.jpg" class="portfolio-img">
                                        <div class="grid_item_overlay">
                                            <div class="separator4"></div>
                                            <h3>Smart Fishing Rod</h3>
                                            <p>Arduino & Android & SpringFramework</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="single_portfolio tile scale-anm web video">
                                    <img src="img/pf3.jpg" alt="" />
                                    <a href="img/pf3.jpg" class="portfolio-img">
                                        <div class="grid_item_overlay">
                                            <div class="separator4"></div>
                                            <h3>Kakao Snackgame Contest</h3>
                                            <p>JQERY & CSS & JAVASCRIPT</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="single_portfolio tile scale-anm web photo" >
                                    <img src="img/pf4.jpg" alt="" />
                                    <a href="img/pf4.jpg" class="portfolio-img">
                                        <div class="grid_item_overlay">
                                            <div class="separator4"></div>
                                            <h3>T-SHIRT DESIGN</h3>
                                            <p>art / t-shirt</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="single_portfolio tile scale-anm bcards design" >
                                    <img src="img/pf5.jpg" alt="" />  
                                    <a href="img/pf5.jpg" class="portfolio-img">
                                        <div class="grid_item_overlay">
                                            <div class="separator4"></div>
                                            <h3>T-SHIRT DESIGN</h3>
                                            <p>art / t-shirt</p>
                                        </div>
                                    </a>
                                </div>

                                <div class="single_portfolio tile scale-anm flyers video design">
                                    <img src="img/pf6.jpg" alt="" />
                                    <a href="img/pf6.jpg" class="portfolio-img">
                                        <div class="grid_item_overlay">
                                            <div class="separator4"></div>
                                            <h3>T-SHIRT DESIGN</h3>
                                            <p>art / t-shirt</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="single_portfolio tile scale-anm photo flyers">
                                    <img src="img/pf7.jpg" alt="" />
                                    <a href="img/pf7.jpg" class="portfolio-img">
                                        <div class="grid_item_overlay">
                                            <div class="separator4"></div>
                                            <h3>T-SHIRT DESIGN</h3>
                                            <p>art / t-shirt</p>
                                        </div>
                                    </a>
                                </div>

                                <div class="single_portfolio tile scale-anm bcards video" >
                                    <img src="img/pf8.jpg" alt="" />
                                    <a href="img/pf8.jpg" class="portfolio-img">
                                        <div class="grid_item_overlay">
                                            <div class="separator4"></div>
                                            <h3>T-SHIRT DESIGN</h3>
                                            <p>art / t-shirt</p>
                                        </div>
                                    </a>
                                </div>

                            </div>

                            <div style="clear:both;"></div>  
                        </div>
                    </div>
                </div><!-- End off container --> 
            </section> <!-- End off Work Section -->            


            <section id="contact" class="contact">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="contact_contant sections">
                                <div class="head_title text-center">
                                    <h2>kEEP IN TOUCH</h2>
                                    <div class="separator"></div>
                                </div><!-- End off Head_title -->
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="main_contact_info">
                                            <div class="row">
                                                <div class="contact_info_content padding-top-90 padding-bottom-60 p_l_r">
                                                    <div class="col-sm-12">
                                                        <div class="single_contact_info">
                                                            <div class="single_info_text">
                                                                <h3>GITHUB</h3>
                                                                <h4> 
                                                                    https://github.com/kkddeerr</h4>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <div class="single_contact_info">
                                                            <div class="single_info_text">
                                                                <h3>CALL</h3>
                                                                <h4>010 6748 2791</h4>
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <div class="single_contact_info">
                                                            <div class="single_info_text">
                                                                <h3>EMAIL</h3>
                                                                <h4>kderr2791@gmail.com</h4>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> 

                                    <div class="col-sm-6">
                                        <div class="single_contant_left padding-top-90 padding-bottom-90">
                                            <%-- <form action="${context}/smtp" method="post"> --%>
                                                <div class="col-lg-8 col-md-8 col-sm-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-1">

                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" name="firstName" placeholder="First Name">
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" name="email" placeholder="Email">
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-12">
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" name="subject" placeholder="Subject" >
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="form-group">
                                                        <textarea class="form-control" name="contents" rows="7" placeholder="Message"></textarea>
                                                    </div>

                                                    <div id="msend">
                                                        <input type="submit" value="SEND MESSAGE" class="btn btn-lg" >
                                                    </div>
                                                </div> 
                                           <!--  </form> -->
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- End of contact section -->

            <!--Footer section-->
            <section class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="main_footer">
                                <div class="row">
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="flowus">
                                            <a href=""><i class="fa fa-facebook"></i></a>
                                            <a href=""><i class="fa fa-instagram"></i></a>
                                        </div>
                                    </div>

                                    <div class="col-sm-6 col-xs-12">
                                        <div class="copyright_text">
                                            <p class=" wow fadeInRight" data-wow-duration="1s">Made <i class="fa fa-heart"></i> by KDH 2018. All Rights Reserved</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- End off footer Section-->

        </div>
        
        <!-- Modal Section 
		<form id="test-form" class="white-popup-block mfp-hide">
			<fieldset style="border:0;">
			<div align="center">
				<div style="width:46%" align="right">
					<div>
						<label for="id">ID</label>
						<input type="text" name="id" class="form-control" style="width:85%; margin:5px">
					</div>
					<div>
						<label for="password">PASSWORD</label>
						<input type="password" name="pwd" class="form-control" style="width:70%; margin:5px">
					</div>
					<div>
						<button type="button" class="btn" id="login">Confirm</button>
						<button type="button" class="btn" id="cancel">Cancel</button>
					</div>
				</div>
			</div>
			</fieldset>
		</form>
		
		-->

        <!-- START SCROLL TO TOP  -->

        <div class="scrollup">
            <a href="#"><i class="fa fa-chevron-up"></i></a>
        </div>
    </div>
</body>
</html>