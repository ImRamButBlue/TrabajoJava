<%-- 
    Document   : login
    Created on : 21-11-2017, 9:44:12
    Author     : cetecom
--%>

<%@page import="Entidades.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Mejor Tienda Sushi</title>

        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

        <meta content="Metronic Shop UI description" name="description">
        <meta content="Metronic Shop UI keywords" name="keywords">
        <meta content="keenthemes" name="author">

        <meta property="og:site_name" content="-CUSTOMER VALUE-">
        <meta property="og:title" content="-CUSTOMER VALUE-">
        <meta property="og:description" content="-CUSTOMER VALUE-">
        <meta property="og:type" content="website">
        <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
        <meta property="og:url" content="-CUSTOMER VALUE-">

        <link rel="shortcut icon" href="favicon.ico">

        <!-- Fonts START -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"><!--- fonts for slider on the index page -->  
        <!-- Fonts END -->

        <!-- Global styles START -->          
        <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Global styles END --> 

        <!-- Page level plugin styles START -->
        <link href="assets/pages/css/animate.css" rel="stylesheet">
        <link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
        <link href="assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
        <!-- Page level plugin styles END -->

        <!-- Theme styles START -->
        <link href="assets/pages/css/components.css" rel="stylesheet">
        <link href="assets/pages/css/slider.css" rel="stylesheet">
        <link href="assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
        <link href="assets/corporate/css/style.css" rel="stylesheet">
        <link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
        <link href="assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
        <link href="assets/corporate/css/custom.css" rel="stylesheet">
        <!-- Theme styles END -->
    </head>
    <!-- Head END -->

    <!-- Body BEGIN -->
    <body class="ecommerce">
        <!-- BEGIN STYLE CUSTOMIZER -->
        <div class="color-panel hidden-sm">
            <div class="color-mode-icons icon-color"></div>
            <div class="color-mode-icons icon-color-close"></div>
            <div class="color-mode">
                <p>Color del Tema</p>
                <ul class="inline">
                    <li class="color-red current color-default" data-style="red"></li>
                    <li class="color-blue" data-style="blue"></li>
                    <li class="color-green" data-style="green"></li>
                    <li class="color-orange" data-style="orange"></li>
                    <li class="color-gray" data-style="gray"></li>
                    <li class="color-turquoise" data-style="turquoise"></li>
                </ul>
            </div>
        </div>
        <!-- END BEGIN STYLE CUSTOMIZER --> 

        <!-- BEGIN TOP BAR -->
        <div class="pre-header">
            <div class="container">
                <div class="row">
                    <!-- BEGIN TOP BAR LEFT PART -->
                    <div class="col-md-6 col-sm-6 additional-shop-info">
                        <ul class="list-unstyled list-inline">
                            <li><i class="fa fa-phone"></i><span>+56 9984 6523</span></li>
                        </ul>
                    </div>
                    <!-- END TOP BAR LEFT PART -->
                    <!-- BEGIN TOP BAR MENU -->
                    <% 
                       HttpSession s=request.getSession(true);
                       
                       if(s.getAttribute("usuario")==null)
                       {
                            out.println("<div class='col-md-6 col-sm-6 additional-nav'>");
                            out.println("<ul class='list-unstyled list-inline pull-right'>");
                            out.println("<li><a href='shop-checkout.html'>Carrito</a></li>");
                            out.println("<li><a href='login.jsp'>Iniciar sesion</a></li>");
                            out.println("<li><a href='registrarse.jsp'>Registrarse</a></li>");
                            out.println("</ul>");
                            out.println("</div>");
                       }
                       else
                       {
                           Usuario logeado=(Usuario)s.getAttribute("usuario");
                            out.println("<div class='col-md-6 col-sm-6 additional-nav'>");
                            out.println("<ul class='list-unstyled list-inline pull-right'>");
                            out.println("<li><a href='shop-checkout.html'>Carrito</a></li>");
                            out.println("<li><label>Bienvenido Usuario "+logeado.getId()+"</label></li>");
                            out.println("<li><a href='logout'>Cerrar Sesión</a></li>");
                            out.println("</ul>");
                            out.println("</div>");
                       }
                       %>
                    <!-- END TOP BAR MENU -->
                </div>
            </div>        
        </div>
        <!-- END TOP BAR -->

        <!-- BEGIN HEADER -->
        <div class="header">
            <div class="container">
                <a class="site-logo" href="index.jsp"><img src="assets/corporate/img/logos/logo-real.png" alt="Metronic Shop UI"></a>

                <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

                <!-- BEGIN CART -->
                <div class="top-cart-block">
                    <div class="top-cart-info">
                        <a href="javascript:void(0);" class="top-cart-info-count">3 items</a>
                        <a href="javascript:void(0);" class="top-cart-info-value">$1260</a>
                    </div>
                    <i class="fa fa-shopping-cart"></i>

                    <div class="top-cart-content-wrapper">
                        <div class="top-cart-content">
                            <ul class="scroller" style="height: 250px;">
                                <li>
                                    <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                                    <span class="cart-content-count">x 1</span>
                                    <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                                    <em>$1230</em>
                                    <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                                </li>
                                <li>
                                    <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                                    <span class="cart-content-count">x 1</span>
                                    <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                                    <em>$1230</em>
                                    <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                                </li>
                                <li>
                                    <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                                    <span class="cart-content-count">x 1</span>
                                    <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                                    <em>$1230</em>
                                    <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                                </li>
                                <li>
                                    <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                                    <span class="cart-content-count">x 1</span>
                                    <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                                    <em>$1230</em>
                                    <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                                </li>
                                <li>
                                    <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                                    <span class="cart-content-count">x 1</span>
                                    <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                                    <em>$1230</em>
                                    <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                                </li>
                                <li>
                                    <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                                    <span class="cart-content-count">x 1</span>
                                    <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                                    <em>$1230</em>
                                    <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                                </li>
                                <li>
                                    <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                                    <span class="cart-content-count">x 1</span>
                                    <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                                    <em>$1230</em>
                                    <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                                </li>
                                <li>
                                    <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                                    <span class="cart-content-count">x 1</span>
                                    <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                                    <em>$1230</em>
                                    <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                                </li>
                            </ul>
                            <div class="text-right">
                                <a href="shop-shopping-cart.html" class="btn btn-default">Ver Carrito</a>
                                <a href="shop-checkout.html" class="btn btn-primary">Pagar</a>
                                
                            </div>
                        </div>
                    </div>            
                </div>
                <!--END CART -->

                <!-- BEGIN NAVIGATION -->
                <div class="header-navigation">
                    <ul>
                        <li class="dropdown dropdown100 nav-catalogue">
                            <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                                Los más vendidos             
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="header-navigation-content">
                                        <div class="row">
                                            <div class="col-md-3 col-sm-4 col-xs-6">
                                                <div class="product-item">
                                                    <div class="pi-img-wrapper">
                                                        <a><img src="assets/pages/img/products/model4.jpg" class="img-responsive" alt="Berry Lace Dress"></a>
                                                    </div>
                                                    <h3>Menu 4: Palta clasico</h3>
                                                    <div class="pi-price">$3500</div>
                           
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-4 col-xs-6">
                                                <div class="product-item">
                                                    <div class="pi-img-wrapper">
                                                        <a><img src="assets/pages/img/products/model3.jpg" class="img-responsive" alt="Berry Lace Dress"></a>
                                                    </div>
                                                    <h3>Menu 6: Estilo Agridulce</h3>
                                                    <div class="pi-price">$5000</div>
                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-4 col-xs-6">
                                                <div class="product-item">
                                                    <div class="pi-img-wrapper">
                                                        <a><img src="assets/pages/img/products/model7.jpg" class="img-responsive" alt="Berry Lace Dress"></a>
                                                    </div>
                                                    <h3>Menu 7: El sumo</h3>
                                                    <div class="pi-price">$10000</div>
                                                    
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div> 
                                </li>
                            </ul>
                        </li>

                        <!-- BEGIN TOP SEARCH -->
                        <li class="menu-search">
                            <span class="sep"></span>
                            <i class="fa fa-search search-btn"></i>
                            <div class="search-box">
                                <form action="#">
                                    <div class="input-group">
                                        <input type="text" placeholder="Search" class="form-control">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="submit">Buscar</button>
                                        </span>
                                    </div>
                                </form>
                            </div> 
                        </li>
                        <!-- END TOP SEARCH -->
                    </ul>
                </div>
                <!-- END NAVIGATION -->
            </div>
        </div>
        <!-- Header END -->

         <div class="container">
            <div class="row">
                <div class="col-lg-4">
                <h3>Ingreso de datos de usuario</h3>
                    <form method="post" action="login" role="form">
                        
                        <label for="nombre">Nombre de cuenta</label>
                        <input type="text" name="nombre" id="nombre" class="form-control" />
                        <label for="password">Password</label>
                        <input type="password" name="password" id="password" class="form-control" />
                        </br>
                        <input type="submit" value="Ingresar" class="btn-primary" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="registrarse.jsp">No tienes cuenta? Registrate!</a>
                        </br
                        </br>
                        </br>
                        </br
                        </br>
                        </br>
                        </br
                        </br>
                        </br>
                    </form>
                </div>
            </div>
        </div>
        
        <!-- BEGIN STEPS -->
        <div class="steps-block steps-block-red">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 steps-block-col">
                        <i class="fa fa-truck"></i>
                        <div>
                            <h2>Despacho por solo $500</h2>
                            <em>Despacho Express en 30 min</em>
                        </div>
                        <span>&nbsp;</span>
                    </div>
                    <div class="col-md-4 steps-block-col">
                        <i class="fa fa-gift"></i>
                        <div>
                            <h2>Regala sushi</h2>
                            <em>Paga en linea y envia sushi a quien quieras</em>
                        </div>
                        <span>&nbsp;</span>
                    </div>
                    <div class="col-md-4 steps-block-col">
                        <i class="fa fa-phone"></i>
                        <div>
                            <h2>+56 9984 6523</h2>
                            <em>Disponible todos los dias de 10:00 a 20:00</em>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END STEPS -->

        <!-- BEGIN PRE-FOOTER -->
        <div class="pre-footer">
            <div class="container">
                <div class="row">
                    <!-- BEGIN BOTTOM ABOUT BLOCK -->
                    <div class="col-md-3 col-sm-6 pre-footer-col">
                        <h2>Sobre Nosotros</h2>
                        <p>MM que rico el sushi </p>
                        <p>Los mejores sushi.</p>
                    </div>
                    <!-- END BOTTOM ABOUT BLOCK -->
                    <!-- BEGIN BOTTOM INFO BLOCK -->
                   <!-- <div class="col-md-3 col-sm-6 pre-footer-col">
                        <h2>Informacion</h2>
                        <ul class="list-unstyled">
                            <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Informacion de Despacho</a></li>
                            <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Servicio al Cliente</a></li>
                            <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Estado De Orden</a></li>
                            <li><i class="fa fa-angle-right"></i> <a href="contacts.html">Contactanos</a></li>
                            <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Metodos de Pago</a></li>
                        </ul>
                    </div> 
                    --> 
                    <!-- END INFO BLOCK -->

                    <!-- BEGIN TWITTER BLOCK --> 
                    <div class="col-md-3 col-sm-6 pre-footer-col">
                        <h2 class="margin-bottom-0">Ultimos Tweets</h2>
                        <a class="twitter-timeline" data-theme="dark" href="https://twitter.com/SoFISHticado?ref_src=twsrc%5Etfw">Tweets by SoFISHticado</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>                              
                    </div>
                    
                    <!-- END TWITTER BLOCK -->

                    <!-- BEGIN BOTTOM CONTACTS -->
                    <div class="col-md-3 col-sm-6 pre-footer-col">
                        <h2>Nuestros Contactos</h2>
                        <address class="margin-bottom-40">
                            Avenida el Sushi 123,<br>
                            Region Metropolitana, Santiago<br>
                            Telefono: 22 232 324<br>
                            Email: <a href="mailto:info@sushi.cl">info@sushi.cl</a><br>
                            Skype: <a href="skype:Sushis1">Sushi</a>
                        </address>
                    </div>
                    <!-- END BOTTOM CONTACTS -->
                </div>
                <hr>
                <div class="row">
                    <!-- BEGIN SOCIAL ICONS -->
                    <div class="col-md-6 col-sm-6">
                        <ul class="social-icons">
                            <li><a class="rss" data-original-title="rss" href="javascript:;"></a></li>
                            <li><a class="facebook" data-original-title="facebook" href="javascript:;"></a></li>
                            <li><a class="twitter" data-original-title="twitter" href="javascript:;"></a></li>
                            <li><a class="googleplus" data-original-title="googleplus" href="javascript:;"></a></li>
                            <li><a class="linkedin" data-original-title="linkedin" href="javascript:;"></a></li>
                            <li><a class="youtube" data-original-title="youtube" href="javascript:;"></a></li>
                            <li><a class="vimeo" data-original-title="vimeo" href="javascript:;"></a></li>
                            <li><a class="skype" data-original-title="skype" href="javascript:;"></a></li>
                        </ul>
                    </div>
                    <!-- END SOCIAL ICONS -->
                </div>
            </div>
        </div>
        <!-- END PRE-FOOTER -->

        <!-- BEGIN FOOTER -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- BEGIN COPYRIGHT -->
                    <div class="col-md-4 col-sm-4 padding-top-10">
                        2015 © ElRoboDelSiglo. Derechos Reservados. 
                    </div>
                    <!-- END COPYRIGHT -->
                    <!-- BEGIN PAYMENTS -->
                    <div class="col-md-4 col-sm-4">
                        <ul class="list-unstyled list-inline pull-right">
                            <li><img src="assets/corporate/img/payments/western-union.jpg" alt="We accept Western Union" title="We accept Western Union"></li>
                            <li><img src="assets/corporate/img/payments/american-express.jpg" alt="We accept American Express" title="We accept American Express"></li>
                            <li><img src="assets/corporate/img/payments/MasterCard.jpg" alt="We accept MasterCard" title="We accept MasterCard"></li>
                            <li><img src="assets/corporate/img/payments/PayPal.jpg" alt="We accept PayPal" title="We accept PayPal"></li>
                            <li><img src="assets/corporate/img/payments/visa.jpg" alt="We accept Visa" title="We accept Visa"></li>
                        </ul>
                    </div>
                    <!-- END PAYMENTS -->
                    <!-- BEGIN POWERED -->
                    <div class="col-md-4 col-sm-4 text-right">
                        <p class="powered">Powered by: <a href="http://www.keenthemes.com/">KeenThemes.com</a></p>
                    </div>
                    <!-- END POWERED -->
                </div>
            </div>
        </div>
        <!-- END FOOTER -->


        <!-- Load javascripts at bottom, this will reduce page load time -->
        <!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
        <!--[if lt IE 9]>
        <script src="assets/plugins/respond.min.js"></script>  
        <![endif]-->
        <script src="assets/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
        <script src="assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
        <script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->

        <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
        <script src="assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
        <script src="assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
        <script src='assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
        <script src="assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->

        <script src="assets/corporate/scripts/layout.js" type="text/javascript"></script>
        <script src="assets/pages/scripts/bs-carousel.js" type="text/javascript"></script>
        <script type="text/javascript">
            jQuery(document).ready(function () {
                Layout.init();
                Layout.initOWL();
                Layout.initImageZoom();
                Layout.initTouchspin();
                Layout.initTwitter();
            });
        </script>
        <!-- END PAGE LEVEL JAVASCRIPTS -->
    </body>
</html>
