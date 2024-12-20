<%--
  Created by IntelliJ IDEA.
  User: muggle
  Date: 2024/7/11
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<base href="<%=basePath%>">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title>ustbh1</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Style CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:300,300i,400,400i,700,700i,800,800i|Merriweather:300,300i,400,400i,700,700i,900,900i"
          rel="stylesheet">
    <link href="css/owl.carousel.min.css" rel="stylesheet">
    <link href="css/owl.theme.default.css" rel="stylesheet">
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" type="text/css" href="css/fontello.css">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="top-bar">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <a href="index.jsp"><img src="images/logo.png" alt=""></a>
            </div>
            <div class="col-lg-3 hidden-md hidden-sm hidden-xs">
                <div class="call-info">
                    <p>
                        <span class="call-icon"><i class="icon-location"></i></span>
                        <span class="call-text">xxxxx <br>
                            xxxxx</span></p>
                </div>
            </div>
            <div class="col-lg-3 hidden-md col-sm-6 hidden-xs ">
                <div class="call-info">
                    <p><span class="call-icon"><i class=" icon-phone-call"></i></span><span class="call-text">+1800-123-4567 <br>+1800-123-8910</span>
                    </p>
                </div>
            </div>
            <div class="col-lg-2 col-md-8 hidden-sm hidden-xs">
                <div class="header-btn"><a href="#" class="btn btn-primary btn-sm">预约 </a></div>
            </div>
        </div>
    </div>
</div>
<div class="header-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="navigation">
                    <div id="navigation">
                        <ul>
                            <li class="active"><a href="index.jsp" title="Home">首页</a></li>
                            <li><a href="about.html" title="About us">关于我们</a></li>
                            <li class="has-sub"><a href="#" title="Services">预约服务</a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/QueryDepartment"
                                           title="service-list">按科室预约</a></li>
                                    <li><a href="${pageContext.request.contextPath}/doctor/querydoctor"
                                           title="service-single">按医生预约</a></li>
                                </ul>
                            </li>
                            <li class="has-sub"><a href="blog-default.html" title="Blog ">博客</a>
                                <ul>
                                    <li><a href="blog-default.html" title="Blog">默认博客</a></li>
                                    <li><a href="blog-single.html" title="Blog Single ">单个博客</a></li>
                                </ul>
                            </li>
                            <li class="has-sub"><a href="javascript:void(0)" title="Features ">公告</a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=新闻报道">新闻报道</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=重要通知">重要通知</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=人事招聘">人事招聘</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=健康科普">健康科普</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=假期安排">假期安排</a></li>
                                </ul>
                            </li>
                            <li class="has-sub"><a href="#" title="Features ">个人中心</a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/needlogin/querypersonappoint"
                                           title="Testimonials">预约订单</a></li>
                                    <li><a href="${pageContext.request.contextPath}/needlogin/querypersonconsul"
                                           title="404-error">诊断病单</a></li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/needlogin/querypersonhospitalization"
                                           title="Styleguide">住院单</a></li>
                                    <li><a href="${pageContext.request.contextPath}/needlogin/queryperson"
                                           title="Testimonials">个人信息</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- header-section close -->
<!-- slider-start -->
<div class="post-img" id="slider_head">
<%--    <div class="owl-carousel slider">--%>
<%--        <div class="item">--%>
<%--            <div class="slider-img"><img src="./images/slider-1.jpg" alt=""></div>--%>
<%--            <div class="container">--%>
<%--                <div class="row">--%>
<%--                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">--%>
<%--                        <div class="slider-captions">--%>
<%--                            <h1 class="slider-title">我们关心你的健康 </h1>--%>
<%--                            <p class="slider-text hidden-xs">具有服务专业的合格员工 </p>--%>
<%--                            <a href="#" class="btn btn-primary btn-lg hidden-sm hidden-xs">预约</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="item">--%>
<%--            <div class="slider-img"><img src="./images/slider-2.jpg" alt=""></div>--%>
<%--            <div class="container">--%>
<%--                <div class="row">--%>
<%--                    <div class="col-lg-6 col-md-6 col-sm-12  col-xs-12">--%>
<%--                        <div class="slider-captions">--%>
<%--                            <h1 class="slider-title">具有专业的合格的员工的服务</h1>--%>
<%--                            <p class="slider-text hidden-xs">团队的集体努力会带来成功 </p>--%>
<%--                            <a href="#" class="btn btn-primary btn-lg hidden-sm hidden-xs">联系我们</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="item">--%>
<%--            <div class="slider-img"><img src="./images/slider-3.jpg" alt=""></div>--%>
<%--            <div class="container">--%>
<%--                <div class="row">--%>
<%--                    <div class="col-lg-6 col-md-6 col-sm-12  col-xs-12">--%>
<%--                        <div class="slider-captions">--%>
<%--                            <h1 class="slider-title">欢迎光临我们医院</h1>--%>
<%--                            <p class="slider-text hidden-xs">最好的医院 </p>--%>
<%--                            <a href="#" class="btn btn-primary btn-lg  hidden-sm hidden-xs">更多关于我们</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
</div>
<!-- slider-close -->

<!-- cta-start -->
<div class="space-medium bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="widget-cta">
                    <h3 class="mb30">Emergency Case</h3>
                    <p>Accident &amp; emergency is something that spares no one and knows no prejudice.</p>
                    <a href="#" class="btn btn-primary btn-sm">contact us</a>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="widget-cta">
                    <h3 class="mb30">网上预约</h3>
                    <p>我们提供7天24小时在线服务</p>
                    <a href="#" class="btn btn-primary btn-sm">预约</a>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="widget-cta-default">
                    <h3 class="widget-cta-default-title">OPD Time</h3>
                    <div class="time-schedule">
                        <ul>
                            <li>Monday to Friday: <span>09am to 07pm</span></li>
                            <li>Saturday: <span>09am to 07Pm</span></li>
                            <li>Sunday: <span>09am to 07Pm</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- cta-close -->
<!-- about-start -->
<div class="space-medium">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="section-title">
                    <!-- section title start-->
                    <h1>Welcome to Asia Hospital</h1>
                    <p class="lead">We are commited to the care and improvement of human life, recognition of this
                        commitment we strive to deliver high-quality, cost-effective care to the communities we serve.We
                        can proudly say we are Multispeciality and Multi-super Speciality Hospital which 100% adheres to
                        world health care standards.</p>
                </div>
                <!-- /.section title start-->
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="about-img mb30"><img src="./images/about-pic.jpg" alt="" class="img-responsive"></div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mt10">
                <h3> We have dedicated to settle for nothing <br>less than
                    the BEST.</h3>
                <div class="about-list mb40 ">
                    <ul class="angle angle-right">
                        <li>The facilities comprise of the most updated and innovative technologies to provide the most
                            advanced treatment.
                        </li>
                        <li>Teams with the most experienced and qualified professionals.</li>
                        <li>Spacious rooms ranging from Suite, Deluxe, economic etc.</li>
                        <li>Providing the best location by choosing to be centrally located.</li>
                    </ul>
                </div>
                <a href="#" class="btn btn-default btn-lg">More About Us</a>
            </div>
        </div>
    </div>
</div>
<!-- about-close -->
<!-- testimonials-start -->
<div class="space-medium bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="testimonial-block mb30">
                    <div class="testimonial-content">
                        <p>“I am very grateful to yourself and your team for the excellent support extended by you all
                            during my treatment for heartattack at Asia Hospital. The excellent diagnosis and treatment
                            coupled with your patience and kindness in treating me is extremely appreciable”</p>
                    </div>
                    <div class="testimonial-pic">
                        <img src="./images/testimonial-pic-1.jpg" alt="" class="img-responsive"></div>
                    <div class="testimonial-text">
                        <h4>Alesia Davidson</h4>
                        <div class="testimonial-meta">Heart Attack Survivor</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="testimonial-block mb30">
                    <div class="testimonial-content">
                        <p>"The days and nights became easier directly because of the wonderful care I received from the
                            Nurses, Aids, and Charge Nurses.Their attention to ensuring my well-being was exceptional
                            Let me say, due to the excellent care that staff provided, that you turned my nightmare into
                            a promising dream."</p>
                    </div>
                    <div class="testimonial-pic">
                        <img src="./images/testimonial-pic-2.jpg" alt="" class="img-responsive"></div>
                    <div class="testimonial-text">
                        <h4>Janet Deen</h4>
                        <div class="testimonial-meta">Injured Patient</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- testimonials-close -->
<!-- cta-start -->
<div class="cta-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <p class="cta-text">Powered by over 2,000 Patients trust us with their sweet love.</p>
                <a href="#" class="btn btn-default"> view all Review</a>
            </div>
        </div>
    </div>
</div>
<!-- cta-close -->
<!-- news-start -->
<div class="space-medium">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="section-title">
                    <!-- section title start-->
                    <h1>Latest News &amp; Updates</h1>
                </div>
                <!-- /.section title start-->
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="post-block">
                    <!-- post block -->
                    <div class="post-content">

                        <h3><a href="#" class="title">Looking For The Best
                            Hospitals In india?</a></h3>
                        <div class="meta">
                            <span class="meta-date"> <i class="fa fa-calendar"></i> 25 July, 2020</span> <span
                                class="meta-comments"><i class="fa fa-user-circle-o"></i>by <a href="#">Admin</a></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="post-block">
                    <!-- post block -->
                    <div class="post-content">
                        <h3><a href="#" class="title">On The Occasion of World
                            Diabetes Day</a></h3>
                        <div class="meta"><span class="meta-date"> <i class="fa fa-calendar"></i> 24 July, 2020</span>
                            <span class="meta-comments"><i class="fa fa-user-circle-o"></i>by <a
                                    href="#">Admin</a></span></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="post-block">
                    <!-- post block -->
                    <div class="post-content">
                        <h3><a href="#" class="title">How To Find Multispeciality
                            Hospital In Ahmadabad?</a></h3>
                        <div class="meta"><span class="meta-date"> <i class="fa fa-calendar"></i> 25 July, 2020</span>
                            <span class="meta-comments"><i class="fa fa-user-circle-o"></i>by <a
                                    href="#">Admin</a></span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- news-close -->
<!-- footer start -->
<div class="footer">
    <div class="container">
        <div class="row">
            <!-- footer-service-start -->
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                <div class="footer-widget">
                    <h3 class="footer-title">Our Services</h3>
                    <ul>
                        <li><a href="#">Gynacology</a></li>
                        <li><a href="#">Orthopaediac</a></li>
                        <li><a href="#">Gastroenterology</a></li>
                        <li><a href="#">Dermatologist</a></li>
                        <li><a href="#">Ear / Nose / Throat</a></li>
                        <li><a href="#">Psychiatry</a></li>
                        <li><a href="#">Opthamology</a></li>
                    </ul>
                </div>
            </div>
            <!-- footer-service-close -->
            <!-- footer-useful links-start -->
            <div class=" col-lg-2 col-md-2 col-sm-4 col-xs-12">
                <div class="footer-widget">
                    <h3 class="footer-title">Quick Links</h3>
                    <ul>
                        <li><a href="#">Home </a></li>
                        <li><a href="#">Services </a></li>
                        <li><a href="#">About us </a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Testimonials </a></li>
                        <li><a href="#">Contact us</a></li>
                    </ul>
                </div>
            </div>
            <!-- footer-useful links-close -->
            <!-- footer-social-start -->
            <div class=" col-lg-3 col-md-3 col-sm-4 col-xs-12">
                <div class="footer-social">
                    <h3 class="footer-title">Follow Us</h3>

                    <ul>
                        <li><a href="#" class="footer-social-btn btn-facebook "><i class="fa fa-facebook"></i></a><span>Facebook</span>
                        </li>
                        <li><a href="#" class="footer-social-btn btn-twitter "><i class="fa fa-twitter"></i></a><span>Twitter</span>
                        </li>
                        <li><a href="#" class="footer-social-btn btn-googleplus "><i
                                class="fa fa-google-plus"></i></a><span>Google+</span></li>
                        <li><a href="#" class="footer-social-btn btn-instagram "><i
                                class="fa fa-instagram"></i></a><span>Instagram</span></li>
                        <li><a href="#" class="footer-social-btn btn-linkedin "><i class="fa fa-linkedin"></i></a><span>Linkedin</span>
                        </li>
                    </ul>

                </div>
            </div>
            <!-- footer-social-close -->
            <!-- footer-time-schdule-start -->
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                <div class="widget-cta-default">
                    <h3 class="widget-cta-default-title">OPD Time</h3>
                    <div class="time-schedule">
                        <ul>
                            <li>Monday to Friday: <span>09am to 07pm</span></li>
                            <li>Saturday: <span>09am to 07Pm</span></li>
                            <li>Sunday: <span>09am to 07Pm</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- footer-time-schdule-close -->
            <!-- footer-tiny-text-start -->
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class=" mt30 text-center">
                    <p>© 2020. All Rights Reserved. <a target="_blank" href="http://www.mobanwang.com/" title="模板王">模板王</a>
                    </p>
                </div>
            </div>
            <!-- footer-tiny-text-start -->
        </div>
    </div>
</div>
<!-- footer-close -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js" type="text/javascript"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/navigation.js" type="text/javascript"></script>
<script src="js/menumaker.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.sticky.js"></script>
<script type="text/javascript" src="js/sticky-header.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script>
    // 动态加载slider轮播图
    $(document).ready(function (){
        $.getJSON(
            'getSlider',
            function (data) {
                let res = `<div class="container">`;

                data.forEach(function (item) {
                    res +=`<div class="slider-img" style="margin-top: 18px"><img src="http://121.36.4.88:8081/taichi/upload/${data.avatar}" alt=""></div>`;
                });
                res += `</div>`;

                $("#slider_head").append(res);
            }
        )
    })
</script>
</body>

</html>
