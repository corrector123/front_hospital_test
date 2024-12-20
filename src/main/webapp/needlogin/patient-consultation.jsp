
<%--
  Created by IntelliJ IDEA.
  User: muggle
  Date: 2024/7/13
  Time: 16:56
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
    <title>个人中心</title>
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <!-- Style CSS -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:300,300i,400,400i,700,700i,800,800i|Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/owl.carousel.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/owl.theme.default.css" rel="stylesheet">
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fontello.css">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
        function Getpage(page) {

            document.getElementById("pages").value=page;
            document.getElementById("FORM").submit();

        }

        function look(cid) {
            window.location.href="${pageContext.request.contextPath}/needlogin/querypersonhospitalization?cid="+cid;
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

<div style="width:100%; display: flex;">
    <h2 style="margin-left: 250px;margin-top: 50px">搜索条件</h2>
    <form name="FORM" id="FORM" style="display: flex" action="${pageContext.request.contextPath}/needlogin/querypersonconsul" method="post">
        <div class="form-group">
            <select  style="width: 200px;margin-top: 40px;margin-left: 50px" id="2" name="status" type="text" class="form-control">
                <option></option>
                <option value="1" ${status==1?"selected":""}>需要住院</option>
                <option value="0" ${status==0?"selected":""}>不需要住院</option>
            </select>
        </div>
        <input hidden="hidden" id="pages" name="pages" value="1">
        <button  type="submit" style="background-color: #25aae1;margin-left: 50px;width: 250px;height: 50px;margin-top: 40px;color: white" >搜索</button>
    </form>
</div>

<c:forEach items="${pageInfo.list}" var="p">
    <div style="margin-left: 300px;margin-top: 50px">
        <div style="width: 1000px;border-style: solid;height: 600px">
            <h1 style="text-align: center">病历</h1>
            <div style="display: flex;border-bottom-style: solid;height: 50px">
            </div>
            <div style="display: flex;background-color: #dddddd; border-bottom-style: solid">
                <h3 style="margin-left: 200px;">就诊日期</h3>
                <h3 style="margin-left: 400px">${p.consultationTime}</h3>
            </div>
            <div style="display: flex;border-bottom-style: solid">
                <h3 style="margin-left: 200px">患者姓名</h3>
                <h3 style="margin-left: 400px">${patients.name}</h3>
            </div>
            <div style="display: flex;background-color: #dddddd;border-bottom-style: solid">
                <h3 style="margin-left: 200px">就诊科室</h3>
                <h3 style="margin-left: 400px">${p.doctors.department.departmentName}</h3>
            </div>
            <div style="display: flex;border-bottom-style: solid">
                <h3 style="margin-left: 200px">就诊医生</h3>
                <h3 style="margin-left: 400px">${p.doctors.name}</h3>
            </div>
            <div style="display: flex;background-color: #dddddd;border-bottom-style: solid">
                <h3 style="margin-left: 200px">医生电话</h3>
                <h3 style="margin-left: 400px">${p.doctors.phone}</h3>
            </div>

            <c:choose>
                <c:when test="${p.isHospitalRegistered==0}">
                    <div style="display: flex;border-bottom-style: solid">
                        <h3 style="margin-left: 200px">是否住院登记</h3>
                        <h3 style="margin-left: 360px">未登记</h3>
                    </div>
                </c:when>
                <c:otherwise>
                    <div style="display: flex;border-bottom-style: solid">
                        <h3 style="margin-left: 200px">是否住院登记</h3>
                        <h3 style="margin-left: 360px">已登记</h3>
                        <button onclick="look(${p.consultationId})" style="margin-left: 50px">查看住院单</button>
                    </div>
                </c:otherwise>
            </c:choose>


            <c:choose>
                <c:when test="${p.isHospitalized==1}">
                    <div style="display: flex;border-bottom-style: solid">
                        <h3 style="margin-left: 200px">是否住院</h3>
                        <h3 style="margin-left: 430px">是</h3>
                    </div>
                </c:when>
                <c:otherwise>
                    <div style="display: flex;border-bottom-style: solid">
                        <h3 style="margin-left: 200px">是否住院</h3>
                        <h3 style="margin-left: 430px">否</h3>
                    </div>
                </c:otherwise>
            </c:choose>

            <div style="display: flex;">
                <h3 style="margin-left: 450px">医嘱病例</h3>
            </div>
            <div style="float:left;">
                <code style="color: #4d5457">${p.medicalAdviceCase}</code>
            </div>
        </div>
    </div>
</c:forEach>



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

</body>
</html>
