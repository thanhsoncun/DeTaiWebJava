<%-- 
    Document   : footer
    Created on : Aug 27, 2017, 3:59:47 PM
    Author     : hhumo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



        <link href="<c:url value="/Resources/css/style.css" />" rel="stylesheet">
        <link href="<c:url value="/Resources/css/bootstrap.min.css" />" rel="stylesheet">
        <link href="<c:url value="/Resources/css/jquery.nouislider.min.css" />" rel="stylesheet">
        <link href="<c:url value="/Resources/css/owl.carousel.css" />" rel="stylesheet">
        <link href="<c:url value="/Resources/css/owl.theme.default.css" />" rel="stylesheet">

        <link href="<c:url value="/Resources/scripts/FlexSlider/images/flexslider.css" />" rel="stylesheet"

        <script src="<c:url value="=/Resources/scripts/FlexSlider/images/jquery.flexslider.js"/>" type="text/javascript"></script>
        <script src="<c:url value="=/Resources/scripts/FlexSlider/images/jquery.flexslider-min.js"/>" type="text/javascript"></script>

        <script src="<c:url value="/Resources/js/bootstrap.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/Resources/js/imagesloaded.pkgd.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/Resources/js/isotope.pkgd.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/Resources/js/jquery-1.11.2.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/Resources/js/jquery.inview.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/Resources/js/jquery.nouislider.all.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/Resources/js/owl.carousel.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/Resources/js/scripts.js"/>" type="text/javascript"></script>



    </head>
    <body>
        <footer class="footer">
            <div class="top">
                <div class="container">
                    <div class="twitter">
                        <div class="icon"><i class="fa fa-twitter"></i><span></span></div>
                        <div id="tweets" class="flexslider"></div>
                    </div> <!-- end .twitter -->
                    <div class="row">
                        <div class="col-sm-4">
                            <h5>About Us</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur  some dymm adipiscing elit. Nam turpis quam, sodales in text she ante sagittis, varius efficitur mauris.</p>
                            <hr />
                            <div class="iconbox-left">
                                <div class="icon"><i class="fa fa-map-marker"></i></div> <!-- end .icon -->
                                <div class="content"><p>3015 Grand Ave, Coconut Grove, Merrick Way, FL 12345</p></div> <!-- end .content -->
                            </div> <!-- end .iconbox-left -->
                            <div class="iconbox-left">
                                <div class="icon"><i class="fa fa-envelope"></i></div> <!-- end .icon -->
                                <div class="content"><p>info@wheels-control.com</p></div> <!-- end .content -->
                            </div> <!-- end .iconbox-left -->
                            <div class="iconbox-left">
                                <div class="icon"><i class="fa fa-phone"></i></div> <!-- end .icon -->
                                <div class="content"><p>123-456-7890</p></div> <!-- end .content -->
                            </div> <!-- end .iconbox-left -->
                        </div> <!-- end .col-sm-4 -->
                        <div class="col-sm-4">
                            <h5>Featured Deals</h5>
                            <div class="featured-deals">
                                <a href="details.html" class="clearfix">
                                    <h5>Porsche</h5>
                                    <span class="price">$80,000</span>
                                </a>
                                <p>Nam liber tempor cum soluta nobis eleife wheelers as option congue nihil…</p>
                            </div> <!-- end .featured-deals -->
                            <div class="featured-deals">
                                <a href="details.html" class="clearfix">
                                    <h5>Benz</h5>
                                    <span class="price">$94,000</span>
                                </a>
                                <p>Nam liber tempor cum soluta nobis eleife wheelers as option congue nihil…</p>
                            </div> <!-- end .featured-deals -->
                        </div> <!-- end .col-sm-4 -->
                        <div class="col-sm-4">
                            <h5>Get in Touch</h5>
                            <form action="scripts/contact.php" method="post" id="footer-contact-form" target="_blank">
                                <div class="form-group">
                                    <input type="text" class="contact-name" name="contact-name" placeholder="Name" />
                                </div> <!-- end .form-group -->
                                <div class="form-group">
                                    <input type="email" class="contact-email" name="contact-email" placeholder="Email" />
                                </div> <!-- end .form-group -->
                                <div class="form-group">
                                    <textarea name="contact-message" class="contact-message" rows="3" placeholder="Message"></textarea>
                                </div> <!-- end .form-group -->
                                <div class="form-group">
                                    <button type="submit" class="button solid block light-blue">Send Message</button>
                                </div> <!-- end .form-group -->
                                <div class="contact-loading alert alert-info form-alert alert-small" role="alert">
                                    <span class="icon"><i class="fa fa-refresh fa-spin"></i></span>
                                    <span class="message">Loading...</span>
                                </div>
                                <div class="contact-success alert alert-success form-alert alert-small" role="alert">
                                    <span class="icon"><i class="fa fa-check"></i></span>
                                    <span class="message">Success!</span>
                                </div>
                                <div class="contact-error alert alert-danger form-alert alert-small" role="alert">
                                    <span class="icon"><i class="fa fa-exclamation-circle"></i></span>
                                    <span class="message">Error!</span>
                                </div>
                            </form> <!-- end contact-form -->
                        </div> <!-- end .col-sm-4 -->
                    </div> <!-- end .row -->
                </div> <!-- end .container -->
            </div> <!-- end .top -->
            <div class="bottom">
                <span class="copyright">Copyright 2015. All Rights Reserved by Automan. Designed by Theme Designer.</span>
            </div> <!-- end .bottom -->
        </footer> <!-- end .footer -->
    </body>
</html>