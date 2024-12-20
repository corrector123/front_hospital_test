<%--
  Created by IntelliJ IDEA.
  User: muggle
  Date: 2024/7/11
  Time: 16:23
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
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title>科室展示</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Style CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:300,300i,400,400i,700,700i,800,800i|Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" type="text/css" href="css/fontello.css">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script>

        function Getpage(page) {
            document.getElementById("pages").value = page;
            document.getElementById("FORM2").submit();
        }

        function Clickdepart(did) {
            document.getElementById("departf").value = did;
            // document.getElementById("FORM2").submit();
            Getpage(1);
        }

        $(function () {
            //禁用“确认重新提交表单”
            window.history.replaceState(null, null, window.location.href);
        })


        function gotoappoint(did) {
           window.location.href="${pageContext.request.contextPath}/depart/appointment?did="+did;
        }

    </script>


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
                    <p><span class="call-icon"><i class="icon-location"></i></span><span class="call-text">4499 Patton Lane
Raleigh, NC 7603</span></p>
                </div>
            </div>
            <div class="col-lg-3 hidden-md col-sm-6 hidden-xs "> <div class="call-info">
                <p> <span class="call-icon"><i class=" icon-phone-call"></i></span><span class="call-text">+1800-123-4567 <br>+1800-123-8910</span></p>
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
                            <li><a href="about.html" title="About us">关于我们</a> </li>
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
                                    <li><a href="${pageContext.request.contextPath}/needlogin/querypersonappoint" title="Testimonials">预约订单</a></li>
                                    <li><a href="${pageContext.request.contextPath}/needlogin/querypersonconsul" title="404-error">诊断病单</a> </li>
                                    <li><a href="${pageContext.request.contextPath}/needlogin/querypersonhospitalization" title="Styleguide">住院单</a> </li>
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
<!-- header-section close -->
<!-- page-header-start -->
<div class="page-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="page-section">
                    <h1 class="page-title ">Services</h1>
                    <div class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li>services</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- page-header-close -->

<div style="width:100%; display: flex;">
    <h2 style="margin-left: 380px;margin-top: 50px">搜索条件</h2>
    <form name="FORM2" id="FORM2" style="display: flex" action="${pageContext.request.contextPath}/QueryDepartment" method="post">
        <div class="form-group">
            <select  style="width: 200px;margin-top: 40px;margin-left: 50px" id="departf" name="departf" placeholder="Person Quantity" type="text" class="form-control">
                <option></option>
                <c:forEach items="${departlist}" var="d">
                    <option value="${d.departmentId}" ${d.departmentId==departf?"selected":""}>${d.departmentName}</option>
                </c:forEach>
            </select>
        </div>

        <input hidden="hidden" id="pages" name="pages" value="1">
        <input style="margin-left: 50px;margin-top: 40px" value="${Key}" type="text" id="Key" name="Key" placeholder="请输入关键词如“儿童”" class="form-control">
        <button  type="submit" style="background-color: #25aae1;margin-left: 50px;width: 250px;height: 50px;margin-top: 40px;color: white" >搜索</button>
    </form>
</div>



<!-- service-start -->
<div class="space-medium">
    <div class="container">
        <div class="row">
            <c:forEach items="${pageInfo.list}" var="p">
                <c:choose>
                    <c:when test="${p.haschild}">
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <div class="service-block">
                                <div class="service-content">
                                    <a onclick="Clickdepart(${p.departmentId})">    <i class="icon-men-hand"></i></a>
                                    <h3 ><a onclick="Clickdepart(${p.departmentId})">${p.departmentName}</a></h3>
                                </div>
                            </div>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <div class="service-block">
                                <div class="service-content">
                                    <a onclick="gotoappoint(${p.departmentId})">    <i class="icon-men-hand"></i></a>
                                    <h3><a onclick="gotoappoint(${p.departmentId})">${p.departmentName}</a></h3>
                                </div>
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
    </div>
</div>

<div style="margin-left: 700px">
    <div class="pagelist">
        <a style="margin-right: 10px" onclick="Getpage(${pageInfo.prePage})">上一页</a>
        <c:forEach items="${pageInfo.navigatepageNums}" var="num">
            <c:choose>
                <c:when test="${num == pageInfo.pageNum}"><span onclick="Getpage(${num})" class="current">${num}</span></c:when>
                <c:otherwise><a onclick="Getpage(${num})"  style="margin-left: 5px">${num}</a></c:otherwise>
            </c:choose>
        </c:forEach>
        <a onclick="Getpage(${pageInfo.nextPage})" style="margin-right: 10px;margin-left: 10px">下一页</a>
        <a onclick="Getpage(${pageInfo.pages})">尾页</a>
    </div>
</div>


<!-- service-close -->
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
                        <li> <a href="#">Ear / Nose / Throat</a></li>
                        <li> <a href="#">Psychiatry</a></li>
                        <li> <a href="#">Opthamology</a></li>
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
                        <li> <a href="#">Contact us</a></li>
                    </ul>
                </div>
            </div>
            <!-- footer-useful links-close -->
            <!-- footer-social-start -->
            <div class=" col-lg-3 col-md-3 col-sm-4 col-xs-12">
                <div class="footer-social">
                    <h3 class="footer-title">Follow Us</h3>

                    <ul>
                        <li><a href="#" class="footer-social-btn btn-facebook "><i class="fa fa-facebook"></i></a><span>Facebook</span></li>
                        <li><a href="#" class="footer-social-btn btn-twitter "><i class="fa fa-twitter"></i></a><span>Twitter</span></li>
                        <li><a href="#" class="footer-social-btn btn-googleplus "><i class="fa fa-google-plus"></i></a><span>Google+</span></li>
                        <li><a href="#" class="footer-social-btn btn-instagram "><i class="fa fa-instagram"></i></a><span>Instagram</span></li>
                        <li><a href="#" class="footer-social-btn btn-linkedin "><i class="fa fa-linkedin"></i></a><span>Linkedin</span></li>
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
                    <p>© 2020. All Rights Reserved.  <a target="_blank" href="http://www.mobanwang.com/" title="模板王">模板王</a></p>
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
</body>

</html>
