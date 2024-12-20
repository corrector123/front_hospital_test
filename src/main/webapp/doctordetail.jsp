<%--
  Created by IntelliJ IDEA.
  User: muggle
  Date: 2024/7/12
  Time: 14:22
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
    <title>Asia Multispeciality Hospital Website Template</title>
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
        function getsid(date,shiftTime,sid,free) {
            if(confirm("你确定要预约 "+date+" "+shiftTime+"吗")){
                window.location.href="${pageContext.request.contextPath}/needlogin/doctorappointadd?sid="+sid +"&free="+free ;
            }
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
                    <h1 class="page-title ">关于</h1>
                    <div class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li><a href="#">主页</a></li>
                            <li>主页</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- page-header-close -->
<!-- about-start -->
<div class="space-medium">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="section-title">
                    <!-- section title start-->
                    <h1 style="margin-left: 500px">${doctors.name}医生简介</h1>
                    <p class="lead">${doctors.introduction}</p>
                </div>
                <!-- /.section title start-->
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="about-img mb30"><img src="./images/about-pic.jpg" alt="" class="img-responsive"></div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mt10">
                <h3> ${doctors.department.departmentName}</h3>
                <p>${doctors.department.departmentDescription}</p>
                <div class="about-list mb40 ">
                    <ul class="angle angle-right">
                        <li>电话：${doctors.phone}</li>
                        <li>邮箱：${doctors.email}</li>
                        <li>职位：${doctors.professionalTitle.titleName}</li>
                        <li>职位描述：${doctors.professionalTitle.description}</li>
                        <li>挂号费用：${doctors.registrationFee}</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>



<div style="display: flex">
    <div style="margin-left: 200px;width: 100px;margin-top: 120px">
        <h1 style="margin-top: 10px">上午</h1>
        <h1 style="margin-top: 60px">下午</h1>
    </div>
    <div >
        <table border="1"  style="width: 1000px;height: 300px;border-collapse: collapse;margin-bottom: 50px">
            <tr >
                <c:forEach items="${doctorSchedules}" var="d">
                    <c:choose>
                        <c:when test="${d.week==1}">
                            <th>${d.date}<br>星期一</th>
                        </c:when>
                        <c:when test="${d.week==2}">
                            <th>${d.date}<br>星期二</th>
                        </c:when>
                        <c:when test="${d.week==3}">
                            <th>${d.date}<br>星期三</th>
                        </c:when>
                        <c:when test="${d.week==4}">
                            <th>${d.date}<br>星期四</th>
                        </c:when>
                        <c:when test="${d.week==5}">
                            <th>${d.date}<br>星期五</th>
                        </c:when>
                        <c:when test="${d.week==6}">
                            <th>${d.date}<br>星期六</th>
                        </c:when>
                       <c:otherwise>
                           <th>${d.date}<br>星期天</th>
                       </c:otherwise>
                    </c:choose>
                </c:forEach>
            </tr>
            <tr align="center">
                <c:forEach items="${doctorSchedules}" var="d">
                    <c:choose>
                        <c:when test="${d.isAvailable==1}">
                            <td><button style="background-color: #4d5457;color: white">休息</button></td>
                        </c:when>
                        <c:when test="${d.visitCount==null}">
                            <td><button style="background-color: red;color: white">已约满</button></td>
                        </c:when>
                        <c:otherwise>
                            <td><button onclick="getsid('${d.date}','${d.shiftTime}','${d.scheduleId}','${doctors.registrationFee}')" style="background-color: #25aae1;color: white">剩余${d.visitCount}<br>预约</button></td>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </tr>
            <tr align="center" >
                <c:forEach items="${doctorSchedules1}" var="d">
                    <c:choose>
                        <c:when test="${d.isAvailable==1}">
                            <td><button style="background-color: #4d5457;color: white">休息</button></td>
                        </c:when>
                        <c:when test="${d.visitCount==null}">
                            <td><button style="background-color: red;color: white">已约满</button></td>
                        </c:when>
                        <c:otherwise>
                            <td><button onclick="getsid('${d.date}','${d.shiftTime}','${d.scheduleId}','${doctors.registrationFee}')" style="background-color: #25aae1;color: white">剩余${d.visitCount}<br>预约</button></td>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>

            </tr>
        </table>
    </div>

</div>





<!-- about-close -->
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
