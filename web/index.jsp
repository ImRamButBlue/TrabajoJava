<%-- 
    Document   : index
    Created on : 13-11-2017, 1:16:38
    Author     : cetecom
--%>

<%@page import="Entidades.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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

        <!-- BEGIN SLIDER -->
        <div class="page-slider margin-bottom-35">
            <div id="carousel-example-generic" class="carousel slide carousel-slider">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <!-- First slide -->
                    <div class="item carousel-item-four active">
                        <div class="container">
                            <div class="carousel-position-four text-center">
                                <h2 class="margin-bottom-20 animate-delay carousel-title-v3 border-bottom-title text-uppercase" data-animation="animated fadeInDown">
                                    <span class="color-red-v2"> Un monton de </span><br/><span class="color-red-v2">Menus Con El Mejor Sushi</span><br/><span class="color-red-v2">de todo Santiago</span> 
                                </h2>
                                <p class="carousel-subtitle-v2" data-animation="animated fadeInUp"><span class="color-red-v2">Prueba los distintos menus que brindamos</span> <br/>
                                    <span class="color-red-v2">todos nuestros dias.</span></p>
                            </div>
                        </div>
                    </div>

                    <!-- Second slide -->
                    <div class="item carousel-item-five">
                        <div class="container">
                            <div class="carousel-position-four text-center">
                                <h2 class="animate-delay carousel-title-v4" data-animation="animated fadeInDown">
                                    Compra ya
                                </h2>
                                <p class="carousel-subtitle-v2" data-animation="animated fadeInDown">
                                    Disfruta en casa
                                </p>
                                <p class="carousel-subtitle-v3 margin-bottom-30" data-animation="animated fadeInUp">
                                    Totalmente rico
                                </p>
                        
                            </div>
                            <img class="carousel-position-five animate-delay hidden-sm hidden-xs" src="assets/pages/img/shop-slider/slide2/price.png" alt="Price" data-animation="animated zoomIn">
                        </div>
                    </div>

                    <!-- Third slide -->
                    <div class="item carousel-item-six">
                        <div class="container">
                            <div class="carousel-position-four text-center">
                                <span class="carousel-subtitle-v3 margin-bottom-15" data-animation="animated fadeInDown">
                                    Bueno
                                </span>
                                <p class="carousel-subtitle-v4" data-animation="animated fadeInDown">
                                    El mejor de Chile
                                </p>
                                <p class="carousel-subtitle-v3" data-animation="animated fadeInDown">
                                <h2>
                                    <span class="color-red-v2">Completamente fresco a tu casa.</span></h2>
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- Fourth slide -->
                    <div class="item carousel-item-seven">
                        <div class="center-block">
                            <div class="center-block-wrap">
                                <div class="center-block-body">
                                    <h2 class="carousel-title-v1 margin-bottom-20" data-animation="animated fadeInDown">
                                        Sabor totalmente <br/>
                                        Japones
                                    </h2>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control carousel-control-shop" href="#carousel-example-generic" role="button" data-slide="prev">
                    <i class="fa fa-angle-left" aria-hidden="true"></i>
                </a>
                <a class="right carousel-control carousel-control-shop" href="#carousel-example-generic" role="button" data-slide="next">
                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                </a>
            </div>
        </div>
        <!-- END SLIDER -->

        <div class="main">
            <div class="container">
                <!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
                <div class="row margin-bottom-40">
                    <!-- BEGIN SALE PRODUCT -->
                    <div class="col-md-12 sale-product">
                        <h2>Menus</h2>
                        <div class="owl-carousel owl-carousel5">
                            <div>
                                <div class="product-item">
                                    <div class="pi-img-wrapper">
                                        <img src="assets/pages/img/products/model1.jpg" class="img-responsive" alt="Berry Lace Dress">
                                        <div>
                                            <a href="assets/pages/img/products/model1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                            <a href="#product-pop-up-1" class="btn btn-default fancybox-fast-view">Detalles</a>
                                        </div>
                                    </div>
                                    <h3><a href="shop-item.html">Menu 1:Especial Naturaleza</a></h3>
                                    <div class="pi-price">$5000</div>
                                    <a href="javascript:;" class="btn btn-default add2cart">Agregar al carrito</a>
                                    <div class="sticker sticker-sale"></div>
                                </div>
                            </div>
                            <div>
                                <div class="product-item">
                                    <div class="pi-img-wrapper">
                                        <img src="assets/pages/img/products/model2.jpg" class="img-responsive" alt="Berry Lace Dress">
                                        <div>
                                            <a href="assets/pages/img/products/model2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                           <a href="#product-pop-up-2" class="btn btn-default fancybox-fast-view">Detalles</a>
                                        </div>
                                    </div>
                                    <h3><a href="shop-item.html">Menu 2:Especial marino</a></h3>
                                    <div class="pi-price">$5500</div>
                                    <a href="javascript:;" class="btn btn-default add2cart">Agregar al carrito</a>
                                </div>
                            </div>
                            <div>
                                <div class="product-item">
                                    <div class="pi-img-wrapper">
                                        <img src="assets/pages/img/products/model6.jpg" class="img-responsive" alt="Berry Lace Dress">
                                        <div>
                                            <a href="assets/pages/img/products/model6.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                           <a href="#product-pop-up-3" class="btn btn-default fancybox-fast-view">Detalles</a>
                                        </div>
                                    </div>
                                    <h3><a href="shop-item.html">Menu 3: El Vaquero </a></h3>
                                    <div class="pi-price">$4500</div>
                                    <a href="javascript:;" class="btn btn-default add2cart">Agregar al carrito</a>
                                </div>
                            </div>
                            <div>
                                <div class="product-item">
                                    <div class="pi-img-wrapper">
                                        <img src="assets/pages/img/products/model4.jpg" class="img-responsive" alt="Berry Lace Dress">
                                        <div>
                                            <a href="assets/pages/img/products/model4.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                            <a href="#product-pop-up-4" class="btn btn-default fancybox-fast-view">Detalles</a>
                                        </div>
                                    </div>
                                    <h3><a href="javascript:;">Menu 4: Palta Clasico</a></h3>
                                    <div class="pi-price">$3500</div>
                                    <a href="javascript:;" class="btn btn-default add2cart">Agregar al carrito</a>
                                    <div class="sticker sticker-new"></div>
                                </div>
                            </div>
                            <div>
                                <div class="product-item">
                                    <div class="pi-img-wrapper">
                                        <img src="assets/pages/img/products/model5.jpg" class="img-responsive" alt="Berry Lace Dress">
                                        <div>
                                            <a href="assets/pages/img/products/model5.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                            <a href="#product-pop-up-5" class="btn btn-default fancybox-fast-view">Detalles</a>
                                        </div>
                                    </div>
                                    <h3>Menu 5: Estilo Nipon</h3>
                                    <div class="pi-price">$7000</div>
                                    <a href="javascript:;" class="btn btn-default add2cart">Agregar al carrito</a>
                                </div>
                            </div>
                            <div>
                                <div class="product-item">
                                    <div class="pi-img-wrapper">
                                        <img src="assets/pages/img/products/model3.jpg" class="img-responsive" alt="Berry Lace Dress">
                                        <div>
                                            <a href="assets/pages/img/products/model3.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                            <a href="#product-pop-up-6" class="btn btn-default fancybox-fast-view">Detalles</a>
                                        </div>
                                    </div>
                                    <h3><a href="shop-item.html">Menu 6:Estilo agridulce</a></h3>
                                    <div class="pi-price">$5000</div>
                                    <a href="javascript:;" class="btn btn-default add2cart">Agregar al carrito</a>
                                </div>
                            </div>
                            <div>
                                <div class="product-item">
                                    <div class="pi-img-wrapper">
                                        <img src="assets/pages/img/products/model7.jpg" class="img-responsive" alt="Berry Lace Dress">
                                        <div>
                                            <a href="assets/pages/img/products/model7.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                            <a href="#product-pop-up-7" class="btn btn-default fancybox-fast-view">Detalles</a>
                                        </div>
                                    </div>
                                    <h3><a href="shop-item.html">Menu 7: El sumo</a></h3>
                                    <div class="pi-price">$10000</div>
                                    <a href="javascript:;" class="btn btn-default add2cart">Agregar al carrito</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END SALE PRODUCT -->
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
                            <li><a class="facebook" data-original-title="facebook" href="javascript:;"></a></li>
                            <li><a class="twitter" data-original-title="twitter" href="javascript:;"></a></li>
                            <li><a class="youtube" data-original-title="youtube" href="javascript:;"></a></li>
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
                            <li><img src="assets/corporate/img/payments/MasterCard.jpg" alt="We accept MasterCard" title="We accept MasterCard"></li>
                            <li><img src="assets/corporate/img/payments/PayPal.jpg" alt="We accept PayPal" title="We accept PayPal"></li>
                            <li><img src="assets/corporate/img/payments/visa.jpg" alt="We accept Visa" title="We accept Visa"></li>
                        </ul>
                    </div>
                    <!-- END PAYMENTS -->
                </div>
            </div>
        </div>
        <!-- END FOOTER -->

        <!-- BEGIN fast view of a product -->
        <div id="product-pop-up-1" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-3">
                        <div class="product-main-image">
                            <img src="assets/pages/img/products/model1.jpg" alt="Cool green dress with red bell" class="img-responsive">
                        </div>
                        
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-9">
                        <h2>Menu 1: Especial Naturaleza</h2>
                        <div class="price-availability-block clearfix">
                            <div class="price">
                                <strong><span>$</span>5000</strong>
                                
                            </div>
                            
                        </div>
                        <div class="description">
                            <p>Menu con sabores de la naturaleza , desde pequeños toques agridulces con berrys hasta trocitos de manzana.</p>
                            </br>
                            <p>30 Piezas</p>
                        </div>
                        
                        <div class="product-page-cart">
                            <div class="product-quantity">
                                <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
                            </div>
                            <button class="btn btn-primary" type="submit">Añadir al carro</button>
                            
                        </div>
                    </div>

                    <div class="sticker sticker-sale"></div>
                </div>
            </div>
        </div>
        
        <div id="product-pop-up-2" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-3">
                        <div class="product-main-image">
                            <img src="assets/pages/img/products/model2.jpg" alt="Cool green dress with red bell" class="img-responsive">
                        </div>
                        
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-9">
                        <h2>Menu 2: Especial Marino</h2>
                        <div class="price-availability-block clearfix">
                            <div class="price">
                                <strong><span>$</span>5500</strong>
                                
                            </div>
                            
                        </div>
                        <div class="description">
                            <p>Menu EXTRA marino , con trocitos de pulpo y chorito.</p>
                            </br>
                            <p>30 Piezas</p>
                        </div>
                        
                        <div class="product-page-cart">
                            <div class="product-quantity">
                                <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
                            </div>
                            <button class="btn btn-primary" type="submit">Añadir al carro</button>
                            
                        </div>
                    </div>

                    <div class="sticker sticker-sale"></div>
                </div>
            </div>
        </div>
        
        <div id="product-pop-up-3" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-3">
                        <div class="product-main-image">
                            <img src="assets/pages/img/products/model6.jpg" alt="Cool green dress with red bell" class="img-responsive">
                        </div>
                        
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-9">
                        <h2>Menu 3: El vaquero</h2>
                        <div class="price-availability-block clearfix">
                            <div class="price">
                                <strong><span>$</span>4500</strong>
                                
                            </div>
                            
                        </div>
                        <div class="description">
                            <p>Menu a la vieja usansa , rellenos con pollo frito y salsa ranch.</p>
                            </br>
                            <p>40 Piezas</p>
                        </div>
                        
                        <div class="product-page-cart">
                            <div class="product-quantity">
                                <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
                            </div>
                            <button class="btn btn-primary" type="submit">Añadir al carro</button>
                            
                        </div>
                    </div>

                    <div class="sticker sticker-sale"></div>
                </div>
            </div>
        </div>
        
        <div id="product-pop-up-4" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-3">
                        <div class="product-main-image">
                            <img src="assets/pages/img/products/model4.jpg" alt="Cool green dress with red bell" class="img-responsive">
                        </div>
                        
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-9">
                        <h2>Menu 4: Palta clasico</h2>
                        <div class="price-availability-block clearfix">
                            <div class="price">
                                <strong><span>$</span>3500</strong>
                                
                            </div>
                            
                        </div>
                        <div class="description">
                            <p>Menu de los más clasicos , rolls de palta rellenos con queso crema y MÁS PALTA!.</p>
                            </br>
                            <p>20 Piezas</p>
                        </div>
                        
                        <div class="product-page-cart">
                            <div class="product-quantity">
                                <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
                            </div>
                            <button class="btn btn-primary" type="submit">Añadir al carro</button>
                            
                        </div>
                    </div>

                    <div class="sticker sticker-sale"></div>
                </div>
            </div>
        </div>
        
        <div id="product-pop-up-5" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-3">
                        <div class="product-main-image">
                            <img src="assets/pages/img/products/model5.jpg" alt="Cool green dress with red bell" class="img-responsive">
                        </div>
                        
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-9">
                        <h2>Menu 5: Estilo Nipon</h2>
                        <div class="price-availability-block clearfix">
                            <div class="price">
                                <strong><span>$</span>7000</strong>
                                
                            </div>
                            
                        </div>
                        <div class="description">
                            <p>Menu al más puro estilo Japones , con el pescado más fresco y un sabor inigualable.</p>
                            </br>
                            <p>40 Piezas</p>
                        </div>
                        
                        <div class="product-page-cart">
                            <div class="product-quantity">
                                <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
                            </div>
                            <button class="btn btn-primary" type="submit">Añadir al carro</button>
                            
                        </div>
                    </div>

                    <div class="sticker sticker-sale"></div>
                </div>
            </div>
        </div>
        
        <div id="product-pop-up-6" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-3">
                        <div class="product-main-image">
                            <img src="assets/pages/img/products/model3.jpg" alt="Cool green dress with red bell" class="img-responsive">
                        </div>
                        
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-9">
                        <h2>Menu 6: Estilo Agridulce</h2>
                        <div class="price-availability-block clearfix">
                            <div class="price">
                                <strong><span>$</span>5000</strong>
                                
                            </div>
                            
                        </div>
                        <div class="description">
                            <p>Menu con sabores agridulces , empezando con salsa acaramelada y teriyaki y terminando con una lluvia de trocitos de nuez.</p>
                            </br>
                            <p>40 Piezas</p>
                        </div>
                        
                        <div class="product-page-cart">
                            <div class="product-quantity">
                                <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
                            </div>
                            <button class="btn btn-primary" type="submit">Añadir al carro</button>
                            
                        </div>
                    </div>

                    <div class="sticker sticker-sale"></div>
                </div>
            </div>
        </div>
        
        <div id="product-pop-up-7" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-3">
                        <div class="product-main-image">
                            <img src="assets/pages/img/products/model7.jpg" alt="Cool green dress with red bell" class="img-responsive">
                        </div>
                        
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-9">
                        <h2>Menu 7: El sumo</h2>
                        <div class="price-availability-block clearfix">
                            <div class="price">
                                <strong><span>$</span>10000</strong>
                                
                            </div>
                            
                        </div>
                        <div class="description">
                            <p>Menu para los más puros guatones sumos del hogar(SOLO PARA VALIENTES).</p>
                            </br>
                            <p>80 Piezas</p>
                        </div>
                        
                        <div class="product-page-cart">
                            <div class="product-quantity">
                                <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
                            </div>
                            <button class="btn btn-primary" type="submit">Añadir al carro</button>
                            
                        </div>
                    </div>

                    <div class="sticker sticker-sale"></div>
                </div>
            </div>
        </div>
        <!-- END fast view of a product -->

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
