<%--
  Created by IntelliJ IDEA.
  User: corrector
  Date: 2024/7/18
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--图片样式加载失败，使用此方法--%>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
%>
<html lang="en">
<%--图片样式加载失败，使用此方法--%>
<base href="<%=basePath%>>">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title>北科一院</title>
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
                    <p><span class="call-icon"><i class="icon-location"></i></span><span
                            class="call-text">北京科技大学</span></p>
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
                                    <li>
                                        <a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=新闻报道">新闻报道</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=重要通知">重要通知</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=人事招聘">人事招聘</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=健康科普">健康科普</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=假期安排">假期安排</a>
                                    </li>
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
<div class="space-medium">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <h1 class="mb30">${announcements.title}</h1>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12"><span>发布时间</span>
                <h2 class="mt20">${announcements.creationTime}</h2>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12"><span>撰写人</span>
                <h2 class="mt20">${announcements.creator}</h2>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <img src="http://121.36.4.88:8081/taichi/upload/${announcements.avatar}" alt="加载失败" width="20" height="20"/>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <p>${announcements.content}</p>
            </div>
        </div>
        <hr>
    </div>
</div>
</body>
</html>
