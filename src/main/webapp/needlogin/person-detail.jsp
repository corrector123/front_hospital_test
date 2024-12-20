<%--
  Created by IntelliJ IDEA.
  User: muggle
  Date: 2024/7/16
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title>个人信息</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:300,300i,400,400i,700,700i,800,800i|Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/owl.carousel.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/owl.theme.default.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fontello.css">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
        function cancellcookie() {
            window.location.href="${pageContext.request.contextPath}/cancellcook"
        }
    </script>
    <style>
        /* Custom styles */
        .top-bar {
            background-color: #f8f8f8;
            padding: 10px 0;
            border-bottom: 1px solid #eee;
        }
        .call-info {
            margin-top: 10px;
        }
        .header-btn {
            text-align: center;
            margin-top: 15px;
        }
        .navigation ul {
            list-style: none;
            padding: 0;
        }
        .navigation ul li {
            display: inline-block;
            margin-right: 20px;
        }
        .widget-categories {
            background-color: #f9f9f9;
            border: 1px solid #eee;
            padding: 20px;
            width: 600px; /* Adjusted width */
            margin: 0 auto; /* Center align horizontally */
        }
        .widget-title {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }
        .widget-categories ul {
            list-style: none;
            padding: 0;
        }
        .widget-categories ul li {
            margin-bottom: 10px;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
        .button-container .btn {
            margin: 10px; /* Increased margin around buttons */
        }
    </style>
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
                    <p><span class="call-icon"><i class="icon-location"></i></span><span class="call-text">4499 Patton Lane Raleigh, NC 7603</span></p>
                </div>
            </div>
            <div class="col-lg-3 hidden-md col-sm-6 hidden-xs">
                <div class="call-info">
                    <p><span class="call-icon"><i class=" icon-phone-call"></i></span><span class="call-text">+1800-123-4567 <br>+1800-123-8910</span></p>
                </div>
            </div>
            <div class="col-lg-2 col-md-8 hidden-sm hidden-xs">
                <div class="header-btn"><a href="#" class="btn btn-primary btn-sm">预约</a></div>
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
                                    <li><a href="${pageContext.request.contextPath}/QueryDepartment" title="service-list">按科室预约</a></li>
                                    <li><a href="${pageContext.request.contextPath}/doctor/querydoctor" title="service-single">按医生预约</a></li>
                                </ul>
                            </li>
                            <li class="has-sub"><a href="blog-default.html" title="Blog ">博客</a>
                                <ul>
                                    <li><a href="blog-default.html" title="Blog">默认博客</a></li>
                                    <li><a href="blog-single.html" title="Blog Single ">单个博客</a></li>
                                </ul>
                            </li>
                            <li class="has-sub"><a href="#" title="Features ">                            <li class="has-sub"><a href="javascript:void(0)" title="Features ">公告</a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=新闻报道">新闻报道</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=重要通知">重要通知</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=人事招聘">人事招聘</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=健康科普">健康科普</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=假期安排">假期安排</a></li>
                                </ul>
                            </li></a>
                                <ul>
                                    <li><a href="testimonials.html" title="Testimonials">推荐</a></li>
                                    <li><a href="404-error.html" title="404-error">404错误</a></li>
                                    <li><a href="styleguide.html" title="Styleguide">风格指南</a></li>
                                    <li><a href="gallery-zoom.html" title="Gallery">画廊</a></li>
                                </ul>
                            </li>
                            <li class="has-sub"><a href="#" title="Features ">个人中心</a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/needlogin/querypersonappoint" title="Testimonials">预约订单</a></li>
                                    <li><a href="${pageContext.request.contextPath}/needlogin/querypersonconsul" title="404-error">诊断病单</a></li>
                                    <li><a href="${pageContext.request.contextPath}/needlogin/querypersonhospitalization" title="Styleguide">住院单</a></li>
                                    <li><a href="${pageContext.request.contextPath}/needlogin/queryperson" title="Testimonials">个人信息</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div style="display: flex; justify-content: center; margin-top: 50px;">
    <div class="widget widget-categories" style="width: 800px; padding: 30px;">
        <h2 class="widget-title">个人信息</h2>
        <ul>
            <li>患者姓名：${patients.name}</li>
            <li>身份证号：${patients.idCardNumber}</li>
            <li>电话：${patients.phone}</li>
            <li>邮箱：${patients.email}</li>
            <li>余额：${patients.balance}</li>
        </ul>
    </div>
</div>
<div class="button-container">
        <a href="${pageContext.request.contextPath}/paynumber.jsp"><button class="btn btn-primary">充值</button></a>
    <a href="${pageContext.request.contextPath}/needlogin/changedetail" class="btn btn-primary">修改信息</a>
    <button class="btn btn-danger" onclick="cancellcookie()">退出</button>
</div>
</body>
</html>
